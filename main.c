#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

#define UNO 1
#define DOS 2
#define TRES 3
#define CUATRO 4
#define EXITO 0
#define ERROR -1
#define NCHARS 256
#define ES_D 0
#define ES_S 1
#define ES_DS 2

typedef enum boolean { FALSE, TRUE } boolean;

#define ASCII0 0x00

int dString1(char*);
int sString1(char*);
int sString1String2(char*, char*);
int dsString1String2(char*, char*);
int string1String2(char *, char *);
int opcionArgcDos(char*);
int opcionArgcTres(char*, char*);
int opcionArgcCuatro(char*, char*, char*);
void obtenerOpcion(char*, int*, boolean*);
void inicializarArrayBoolean(boolean*);
void mostrarH();
int errorPorEscritura();

int main(int argc, char **argv) {
	int retorno = 0;
	switch (argc) {
		case DOS:	retorno = opcionArgcDos(argv[1]);
					break;
		case TRES:	retorno = opcionArgcTres(argv[1], argv[2]);
					break;
		case CUATRO:retorno = opcionArgcCuatro(argv[1], argv[2], argv[3]);
					break;
		default: 	mostrarH();
					break;
	}
	return retorno;
}

// LLama a la funcion correspondiente dependiendo de los argumentos
// Opciones validas:
// ./tp0 -V
// ./tp0 -h

int opcionArgcDos(char *option) {
	char opcion1[] = "-V";
	char opcion2[] = "-h";

	if ( strcmp(opcion1, option)  == 0 ) {
		printf ("tp0 Version 19/04/2011\n");
		return EXITO;
	}

	if ( strcmp(opcion2, option)  == 0 ) {
		mostrarH();
		return EXITO;
	}

	perror("ERROR: Los argumentos validos son -V o -h\n");
	return ERROR;
}

// LLama a la funcion correspondiente dependiendo de los argumentos
// Opciones validas:
// ./tp0 -d string1
// ./tp0 -s string1
// ./tp0 string1 string2

int opcionArgcTres(char *string1, char *string2) {
	boolean esOpcion = FALSE;
	int numFuncion = 0;

	int (*pFuncion[DOS])(char*) = {dString1, sString1};

	obtenerOpcion(string1, &numFuncion, &esOpcion);

	if (esOpcion) {
		if (numFuncion != ES_DS){
			return (*pFuncion[numFuncion])(string2);
		}

		perror("ERROR: La opcion -ds debe recibir 2 cadenas");
		return ERROR;

	}
	// si la primera cadena no es un opcion -s, -d, -ds.
	// Se toma como otra cadena y por defecto la opcion es sustituir string1String2
	return string1String2(string1, string2);
}

// LLama a la funcion Correspondiente dependiendo de los argumentos
// Opciones validas:
// ./tp0 -s string1 string2
// ./tp0 -ds string1 string2

int opcionArgcCuatro(char *option, char *string1, char *string2) {
	boolean esOpcion = FALSE;
	int numFuncion = 0;

	int (*pFuncion[DOS])(char*, char*) = {sString1String2, dsString1String2 };

	obtenerOpcion(option, &numFuncion, &esOpcion);

	if ( esOpcion ) {
		if (numFuncion != ES_D){
			return (*pFuncion[numFuncion-1])(string1, string2);
		}
		perror("ERROR: La opcion -d debe recibir 1 cadena");
		return ERROR;
	}
	perror("ERROR: Sintaxis invalida");
	return ERROR;
}

// Verififica cual de las opciones se ingreso (-d,-s,-ds);

void obtenerOpcion(char *option, int *numFuncion, boolean *esOpcion) {
	char opcion1[] = "-d";
	char opcion2[] = "-s";
	char opcion3[] = "-ds";

	if (strcmp(opcion1, option)  == 0 ) {
		*esOpcion = TRUE;
		*numFuncion = ES_D;
	} else if (strcmp(opcion2, option)  == 0 ) {
		*esOpcion = TRUE;
		*numFuncion = ES_S;
	} else if (strcmp(opcion3, option)  == 0 ) {
		*esOpcion = TRUE;
		*numFuncion = ES_DS;
	}
}

// Cuando el usuario hace una llamada del tipo ./tr -d string1
// Elimina los caracteres de stdin segun string1 y muestra el resultado por stdout

int dString1(char *string1) {
	int ch, i = 0;
	int size = strlen(string1);
	boolean debeBorrarse[NCHARS];
	inicializarArrayBoolean(debeBorrarse);

	for (i = 0; (i < size); i++){
		debeBorrarse[((int)string1[i])] = TRUE;
	}

	while ((ch = getchar()) != EOF) {
		if (!debeBorrarse[ch])
			if(putchar(ch) == EOF)
				return errorPorEscritura();
	}
	return EXITO;
}

// Cuando el usuario hace una llamada del tipo ./tr -s string1
// Se hace la sumarizacion, se usa un array de boolean para saber si
// el caracter ya fue leido.
int sString1(char *string1) {
	int i = 0, ch = 0, lastCh = -1;
	boolean sumarizar[NCHARS];
	inicializarArrayBoolean(sumarizar);

	int size = strlen(string1);

	for (i=0;i<size;i++){
		sumarizar[(int)string1[i]] = TRUE;
	}
	if (lastCh == -1){
		if((ch = getchar()) == EOF)
			return ERROR;
		if(putchar(ch) == EOF)
			return errorPorEscritura();
		lastCh = ch;
	}
	while ((ch = getchar()) != EOF) {
		if ((!sumarizar[ch]) || (lastCh != ch)){
			if(putchar(ch) == EOF)
				return errorPorEscritura();
			lastCh = ch;
		}
	}
	return EXITO;
}

// Cuando el usuario hace una llamada del tipo ./tr string1 string2
// Sustituye los caracteres de string1 por los de string2
// Si la longitud de string2 es menor a la de string1 se reemplaza por el
// ultimo caracter de string2 en el caso en que ya se supere el tamanio
int string1String2(char *string1, char *string2){
	int ch, i, final;
	char cambios[NCHARS];
	bzero(cambios,NCHARS);

	int string1Size = strlen(string1);
	int string2Size = strlen(string2);

	if (string1Size <= string2Size) final = string1Size;
		else final = string2Size;

	for (i=0; i < final; i++){
		cambios[((int)string1[i])] = string2[i];
	}

	if (final == string2Size){ //extiendo con el ultimo caracter de string 2
		for (i = string2Size; i < string1Size; i++)
			cambios[((int)string1[i])] = string2[string2Size-1];
	}

	while ((ch = getchar()) != EOF) {
		if (cambios[ch] == ASCII0) {
			if (putchar(ch) == EOF)
				return errorPorEscritura();
		} else {
			if (putchar(cambios[ch]) == EOF)
				return errorPorEscritura();
		}
	}
	return EXITO;
}

// Cuando el usuario hace una llamada del tipo ./tr -s string1 string2.
//remplaza los caracteres de string 1 por los de 2, extendiendo si es nesesario
//y sumariza segun string 2
int sString1String2(char *string1, char *string2) {
	int ch = 0, i = 0, lastCh = -1, final = 0;
	char cambios[NCHARS];
	bzero(cambios,NCHARS);

	int string1Size = strlen(string1);
	int string2Size = strlen(string2);

	if (string1Size <= string2Size) final = string1Size;
		else final = string2Size;

	for (i=0; i < final; i++){
		cambios[((int)string1[i])] = string2[i];
	}

	if (final == string2Size){ //extiendo con el ultimo caracter de string 2
		for (i = string2Size; i < string1Size; i++)
			cambios[((int)string1[i])] = string2[string2Size-1];
	}

	while ((ch = getchar()) != EOF) {
		if (cambios[ch] == ASCII0){
			if (cambios[lastCh] != ch) {
				if (putchar(ch) == EOF)
					return errorPorEscritura();
				lastCh = ch;
			}
		} else {
			if (cambios[ch] != cambios[lastCh]){
				if (putchar(cambios[ch]) == EOF)
					return errorPorEscritura();
				lastCh = ch;
			}
		}
	}
	return EXITO;
}

// Cuando el usuario hace una llamada del tipo ./tr -ds cadena1 cadena2
int dsString1String2(char *string1, char *string2) {
	int ch, i, lastCh = 0;
	boolean debeBorrarse[NCHARS],sumarizar[NCHARS];

	inicializarArrayBoolean(debeBorrarse);
	inicializarArrayBoolean(sumarizar);

	int string1Size = strlen(string1);
	int string2Size = strlen(string2);

	for (i = 0; i < string1Size; i++){
		debeBorrarse[((int)string1[i])] = TRUE;
	}

	for (i=0;i<string2Size;i++){
			sumarizar[(int)string2[i]] = TRUE;
	}

	while ((ch = getchar()) != EOF) {
		if (!debeBorrarse[ch]) {
			if ((!sumarizar[ch]) || (lastCh != ch)){
				if(putchar(ch) == EOF)
					return errorPorEscritura();
				lastCh = ch;
			}
		}
	}
	return EXITO;
}

void inicializarArrayBoolean(boolean *fueLeido){
	int i;
	for(i = 0; i < 256; i++){
		fueLeido[i] = FALSE;
	}
}

void mostrarH() {
	printf ("Usage:\n");
	printf ("tp0 -h\n");
	printf ("tp0 -V\n");
	printf ("tp0 [options] string1 string2\n");
	printf ("tp0 [options] string1\n");
	printf ("Options:\n");
	printf ("-V, --version\n");
	printf ("-h, --help\n");
	printf ("-d, --delete\n");
	printf ("-s, --squeeze\n");
}

int errorPorEscritura() {
	perror("ERROR: ocurre un error de escritura");
	return ERROR;
}
