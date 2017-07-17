#include <mips/regdef.h>
#include <sys/syscall.h>
#SETUP
#define SO_SIZE 40
#define SO_SET2	48
#define SO_SET1	44
#define SO_MAP	40		
#define SO_RA	32
#define SO_FP	28
#define SO_GP 	24
#define SO_LASTCH 16
#SETUP
#myputchar
#define PC_SIZE 32
#define PC_CH 32
#define PC_RA 24
#define PC_FP 20
#define PC_GP 16
#myputchar
#mygetchar
#define GC_SIZE 40
#define GC_RA 32
#define GC_FP 28
#define	GC_GP 24
#define GC_CH 16
#mygetchar
#tr
#define TR_SIZE 40
#define TR_SET2	44
#define TR_SET1	40	
#define TR_RA	32
#define TR_FP	28
#define TR_GP 	24
#define TR_CH	16
#tr
#tr_s2
#define TR_S2_SIZE 	40
#define TR_S2_SET2	44	
#define TR_S2_SET1	40
#define TR_S2_RA	32
#define TR_S2_FP	28
#define TR_S2_GP 	24
#define TR_S2_CH	20
#define TR_S2_LASTCH	16
#tr_s2
#tr_s1
#define TR_S1_SIZE 	40
#define TR_S1_SET1	40	
#define TR_S1_RA	32
#define TR_S1_FP	28
#define TR_S1_GP 	24
#define TR_S1_CH	20
#define TR_S1_LASTCH	16
#tr_s1
#tr_d
#define TR_D_SIZE 	40
#define TR_D_SET1	40	
#define TR_D_RA		32
#define TR_D_FP		28
#define TR_D_GP 	24
#define TR_D_CH		16
#tr_d
#tr_ds
#define TR_DS_SIZE 	40
#define TR_DS_SET2	44
#define TR_DS_SET1	40	
#define TR_DS_RA	32
#define TR_DS_FP	28
#define TR_DS_GP 	24
#define TR_DS_CH	20
#define TR_DS_LASTCH	16
#tr_ds
	.data
	.align	2
	.type	map1, @object
	.size	map1, 1024
map1:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	39
	.word	40
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	59
	.word	60
	.word	61
	.word	62
	.word	63
	.word	64
	.word	65
	.word	66
	.word	67
	.word	68
	.word	69
	.word	70
	.word	71
	.word	72
	.word	73
	.word	74
	.word	75
	.word	76
	.word	77
	.word	78
	.word	79
	.word	80
	.word	81
	.word	82
	.word	83
	.word	84
	.word	85
	.word	86
	.word	87
	.word	88
	.word	89
	.word	90
	.word	91
	.word	92
	.word	93
	.word	94
	.word	95
	.word	96
	.word	97
	.word	98
	.word	99
	.word	100
	.word	101
	.word	102
	.word	103
	.word	104
	.word	105
	.word	106
	.word	107
	.word	108
	.word	109
	.word	110
	.word	111
	.word	112
	.word	113
	.word	114
	.word	115
	.word	116
	.word	117
	.word	118
	.word	119
	.word	120
	.word	121
	.word	122
	.word	123
	.word	124
	.word	125
	.word	126
	.word	127
	.word	128
	.word	129
	.word	130
	.word	131
	.word	132
	.word	133
	.word	134
	.word	135
	.word	136
	.word	137
	.word	138
	.word	139
	.word	140
	.word	141
	.word	142
	.word	143
	.word	144
	.word	145
	.word	146
	.word	147
	.word	148
	.word	149
	.word	150
	.word	151
	.word	152
	.word	153
	.word	154
	.word	155
	.word	156
	.word	157
	.word	158
	.word	159
	.word	160
	.word	161
	.word	162
	.word	163
	.word	164
	.word	165
	.word	166
	.word	167
	.word	168
	.word	169
	.word	170
	.word	171
	.word	172
	.word	173
	.word	174
	.word	175
	.word	176
	.word	177
	.word	178
	.word	179
	.word	180
	.word	181
	.word	182
	.word	183
	.word	184
	.word	185
	.word	186
	.word	187
	.word	188
	.word	189
	.word	190
	.word	191
	.word	192
	.word	193
	.word	194
	.word	195
	.word	196
	.word	197
	.word	198
	.word	199
	.word	200
	.word	201
	.word	202
	.word	203
	.word	204
	.word	205
	.word	206
	.word	207
	.word	208
	.word	209
	.word	210
	.word	211
	.word	212
	.word	213
	.word	214
	.word	215
	.word	216
	.word	217
	.word	218
	.word	219
	.word	220
	.word	221
	.word	222
	.word	223
	.word	224
	.word	225
	.word	226
	.word	227
	.word	228
	.word	229
	.word	230
	.word	231
	.word	232
	.word	233
	.word	234
	.word	235
	.word	236
	.word	237
	.word	238
	.word	239
	.word	240
	.word	241
	.word	242
	.word	243
	.word	244
	.word	245
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	253
	.word	254
	.word	255
#-----------------------------tr_ds-----------------------------
	.text
	.align	2
	.globl	tr_ds
	.ent	tr_ds
tr_ds:
	.frame	$fp,TR_DS_SIZE,ra	# Tamanio 48
	.set noreorder			# Bloque de codigo PIC
	.cpload	t9
	.set	reorder
	subu	sp,sp,TR_DS_SIZE
	.cprestore TR_DS_GP		# Equivale a sw	gp,TR_DS_GP(sp)
	sw	ra,TR_DS_RA(sp)		# Se guardan los Calle Saved Registers
	sw	$fp,TR_DS_FP(sp)

	move	$fp,sp			# De ahora en mas se usa FP para direccionar el stack
	sw	a0,TR_DS_SET1($fp)	# Se almacenan los argumentos en la ABA del caller
	sw	a1,TR_DS_SET2($fp)
	la	a0,map1			# Preparo llamada a setup
	lw	a1,TR_DS_SET1($fp)	
	move	a2,zero
	jal 	setup			# Llamo a setup(map1, set1, 0);
	la	a0,map2			# Preparo llamada a setup
	lw	a1,TR_DS_SET2($fp)	
	move	a2,zero
	jal 	setup			# Llamo a setup(map1, set2, 0);
	li	t0,256
	sw	t0,TR_DS_LASTCH($fp) 	# lastch=oobch
trdsfor:
	jal	mygetchar
	sw	v0,TR_DS_CH($fp)	# ch=getchar()
	li	t0,-1
	beq	v0,t0,fintrds		# si es eof termina
	lw	t0,TR_DS_CH($fp)	# t0 = ch
	sll	t0,t0,2			# t0 = ch * 4 offset de map1
	la	t1,map1			# t1 = map1
	addu	t1,t1,t0		# t1 = map1 + offset
	lw	t0,0(t1)		# t0 = map1[ch]
	bne	t0,zero,trdsfor		# si no es 0 vuelve al for
	lw	t0,TR_DS_CH($fp)	# t0 = ch
	sll	t0,t0,2			# t0 = ch * 4 offset de map1
	la	t1,map2			# t1 = map2
	addu	t1,t1,t0		# t1 = map2 + offset
	lw	t0,0(t1)		# t0 = map2[ch]
	beq	t0,zero,trdsif		# si es 0 entra al if
	lw	t0,TR_DS_CH($fp)	# t0 = ch
	lw	t1,TR_DS_LASTCH($fp)	# t1 = lastch
	bne	t0,t1,trdsif
	b	trdsfor	
trdsif:	
	lw	t0,TR_DS_CH($fp)
	sw	t0,TR_DS_LASTCH($fp)	# lastch = ch
	lb	a0,TR_DS_CH($fp)
	jal	myputchar
	b	trdsfor
fintrds:
	move	sp,$fp
	lw	ra,TR_DS_RA(sp)
	lw	$fp,TR_DS_FP(sp)
	addu	sp,sp,TR_DS_SIZE			
	j	ra
	.end	tr_ds
#-----------------------------tr_d------------------------------
	.align	2
	.globl	tr_d
	.ent	tr_d
tr_d:
	.frame	$fp,TR_D_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,TR_D_SIZE
	.cprestore TR_D_GP		# Equivale a sw	gp,TR_D_GP(sp)
	sw	ra,TR_D_RA(sp)		# Se guardan los Calle Sabed Registers ra,fp,gp
	sw	$fp,TR_D_FP(sp)		
	
	move	$fp,sp			# De ahora en mas se usa FP para direccionar el stack
	sw	a0,TR_D_SET1($fp)	# Se almacenan los argumentos en la ABA del caller
	sw	zero,TR_D_CH($fp)
	la	a0,map1			# Preparo llamada a setup
	lw	a1,TR_S1_SET1($fp)	
	move	a2,zero
	jal 	setup			# Llamo a setup(map1, set1, 0);
trdwh:
	jal	mygetchar
	sw	v0,TR_D_CH($fp)		# ch = mygetchar()
	li	t0,-1
	beq	v0,t0,fintrd		# si es eof termina
	lw	t0,TR_D_CH($fp)		# t0 = ch
	sll	t0,t0,2			# t0 = ch * 4 offset de map1
	la	t1,map1			# t1 = map1
	addu	t1,t1,t0		# t1 = map1 + offset
	lw	t0,0(t1)		# t0 = map1[ch]
	bne	t0,zero,trdwh		# si no es 0 salta al while
	lw	a0,TR_D_CH($fp)
	jal	myputchar		# myputchar(ch)
	b	trdwh	
fintrd:	
	move	sp,$fp
	lw	ra,TR_D_RA(sp)
	lw	$fp,TR_D_FP(sp)
	addu	sp,sp,TR_D_SIZE			
	j	ra
	.end	tr_d
#-----------------------------tr_s1------------------------------	
	.align	2
	.globl	tr_s1
	.ent	tr_s1
tr_s1:
	.frame	$fp,TR_S1_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,TR_S1_SIZE
	.cprestore TR_S1_GP		# Equivale a sw	gp,TR_S1_GP(sp)
	sw	ra,TR_S1_RA(sp)		# Se guardan los Calle Sabed Registers ra,fp,gp
	sw	$fp,TR_S1_FP(sp)		

	move	$fp,sp			# De ahora en mas se usa FP para direccionar el stack
	sw	a0,TR_S1_SET1($fp)	# Se almacenan los argumentos en la ABA del caller	
	sw	zero,TR_S1_LASTCH($fp)	
	sw	zero,TR_S1_CH($fp)	
	la	a0,map1			# Preparo llamada a setup
	lw	a1,TR_S1_SET1($fp)	
	move	a2,zero
	jal 	setup			# Llamo a setup(map1, set1, 0);
	li	t0,256
	sw	t0,TR_S2_LASTCH($fp) 	# lastch=oobch
trs1for:
	jal	mygetchar
	sw	v0,TR_S1_CH($fp)	# ch=getchar()
	li	t0,-1
	beq	v0,t0,fintrs1		# si es eof termina
	lw	t0,TR_S1_CH($fp)	# t0 = ch
	sll	t0,t0,2			# t0 = ch *4 offset del map1
	la	t1,map1			# t1 = map1
	addu	t1,t1,t0		# t1 = map1 + offset
	lw	t0,0(t1)		# t0 = map1[ch]
	beq	t0,zero,trs1if		# si es 0 entra al if
	lw	t0,TR_S1_CH($fp)	# t0 = ch
	lw	t1,TR_S1_LASTCH($fp)	# t1 = lastch
	bne	t0,t1,trs1if		# si son diferentes entran al if
	b 	trs1for
trs1if:
	lw	t0,TR_S1_CH($fp)
	sw	t0,TR_S1_LASTCH($fp)	#lastch = ch
	lb	a0,TR_S1_CH($fp)
	jal	myputchar
	b	trs1for
fintrs1:
	move	sp,$fp
	lw	ra,TR_S1_RA(sp)
	lw	$fp,TR_S1_FP(sp)
	addu	sp,sp,TR_S1_SIZE			
	j	ra
	.end	tr_s1
#-----------------------------tr_s2------------------------------
	.align	2
	.globl	tr_s2
	.ent	tr_s2
tr_s2:
	.frame	$fp,TR_S2_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,TR_S2_SIZE
	.cprestore TR_S2_GP		# Equivale a sw gp,TR_S2_GP(sp)
	sw	ra,TR_S2_RA(sp)		# guardo ra,fp,gp
	sw	$fp,TR_S2_FP(sp)

	move	$fp,sp	
	sw	a0,TR_S2_SET1($fp)
	sw	a1,TR_S2_SET2($fp)
	sw	zero,TR_S2_LASTCH($fp)
	sw	zero,TR_S2_CH($fp)
	lw	t0,TR_S2_SET2($fp)	# t0 = set2
	lb	t0,0(t0)		# t0 = * set2
	bne	t0,zero,segtrs2		# si no hay error salta,sino
	li	v0,SYS_write 		# imprime mensaje de error
	li	a0,1        		# a0: file descriptor number.
	la	a1,msgerrset2	   	# a1: output data pointer.
	li	a2,11      		# a2: output byte size.
	syscall
	b	fintrs2	
segtrs2:
	la	a0,map1			# preparo llamada a setup(map1,set1,set2)
	lw	a1,TR_SET1($fp)
	lw	a2,TR_SET2($fp)
	jal 	setup
	la	a0,map2			# preparo llamada a setup(map2,set2,0)
	lw	a1,TR_SET2($fp)
	li	a2,0
	jal 	setup
	li	t0,256
	sw	t0,TR_S2_LASTCH($fp) 	# lastch=oobch
trs2for:
	jal	mygetchar
	sw	v0,TR_S2_CH($fp)	# ch=getchar()
	li	t0,-1
	beq	v0,t0,fintrs2		# si es eof termina
	lw	t0,TR_S2_CH($fp)	# t0 = ch
	sll	t0,t0,2			# t0 = t0 * 4 offset del map
	la	t1,map1			# t1 = map1
	addu	t1,t1,t0		# t1 = map + offset
	lw	t0,0(t1)		# t0 = map1[ch]
	sw	t0,TR_S2_CH($fp)	# ch = map1[ch]
	lw	t0,TR_S2_CH($fp)	# t0 = ch
	sll	t0,t0,2			# t0 = ch *4 offset del map2
	la	t1,map2			# t1 = map2
	addu	t1,t1,t0		# t1 = map2 + offset
	lw	t0,0(t1)		# t0 = map2[ch]
	beq	t0,zero,trs2if		# si es 0 entra al if
	lw	t0,TR_S2_CH($fp)	# t0 = ch
	lw	t1,TR_S2_LASTCH($fp) 	# t1 = lastch
	bne	t0,t1,trs2if	
	b	trs2for
trs2if:
	lw	t0,TR_S2_CH($fp)
	sw	t0,TR_S2_LASTCH($fp)	# lastch = ch
	lb	a0,TR_S2_CH($fp)
	jal	myputchar
	b	trs2for
fintrs2:
	move	sp,$fp
	lw	ra,TR_S2_RA(sp)
	lw	$fp,TR_S2_FP(sp)
	addu	sp,sp,TR_S2_SIZE			
	j	ra
	.end	tr_s2

	.rdata	
msgerrset2:
	.ascii	"empty set2\000" #strlen = 11

#-----------------------------tr------------------------------
	.text
	.align	2
	.globl	tr
	.ent	tr
tr:
	.frame	$fp,TR_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,TR_SIZE
	.cprestore TR_GP		# Equivale sw gp,TR_GP(sp)
	sw	ra,TR_RA(sp)		# guardo ra,fp,gp
	sw	$fp,TR_FP(sp)

	move	$fp,sp	
	sw	a0,TR_SET1($fp)
	sw	a1,TR_SET2($fp)
	sw	zero,TR_CH($fp)
	lw	t0,TR_SET2($fp)		# t0 = set2
	lb	t0,0(t0)		# t0 = *set2
	bne	t0,zero,segtr		# si no hay error salta a segtr
	li	v0,SYS_write 		# en caso de error imprimo que hubo error en set2
	li	a0,1        		# a0: file descriptor number.
	la	a1,msgerrset2	   	# a1: output data pointer.
	li	a2,11      		# a2: output byte size.
	syscall
	b	fintr
segtr:
	la	a0,map1			# preparo llamada a setup
	lw	a1,TR_SET1($fp)
	lw	a2,TR_SET2($fp)
	jal 	setup
trwh1:
	jal	mygetchar		# llamo a mygetchar, devuelve en v0
	sw	v0,TR_CH($fp)		# ch = getchar()
	move	t0,v0
	li	t1,-1
	beq	t0,t1,fintr		# si es eof termina
	sll	t0,t0,2			# t0 = ch *4 = offset del map
	la	t1,map1			# t1 = map
	addu	t1,t1,t0		# t1 = map + offsetmap
	lb	a0,0(t1)		# a0 = map1[ch]
	jal	myputchar
	b 	trwh1
fintr:
	move	sp,$fp
	lw	ra,TR_RA(sp)
	lw	$fp,TR_FP(sp)
	addu	sp,sp,TR_SIZE			
	j	ra
	.end	tr
#-----------------------------setup------------------------------	
	.align	2
	.ent	setup
setup:	
	.frame	$fp,SO_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,SO_SIZE
	.cprestore SO_GP		# Equivale a sw	gp,SO_GP(sp)
	sw	ra,SO_RA(sp)		# guardo ra,fp,gp
	sw	$fp,SO_FP(sp)
	
	move	$fp,sp
	sw	a0,SO_MAP(sp)		# guardo los 3 argumentos
	sw	a1,SO_SET1(sp)
	sw	a2,SO_SET2(sp)
	lw	t0,SO_SET1($fp)		# primer if(!set1)
	beq	t0,zero,finsetup 	# si se cumple termina el setup sino sigo con el segundo if
	lw 	t0,SO_SET2($fp)
	bne	t0,zero,swh2
	li	t0,0			# t0 = 0 i
	li 	t1,256			# t1 = 255
memset:	
	sll 	t3,t0,2			# t3 = i*4 offset
	lw 	t2,SO_MAP($fp)		# t2 = map
	addu	t2,t2,t3		# t2 = map + offset
	sw	zero,0(t2)		# map[t0] = 0
	addiu	t0,t0,1			# t0 += 1
	blt	t0,t1,memset	
swh1:					# while1 adentro de if1
	lw	t0,SO_SET1($fp)
	lb	t0,0(t0)
	beq	t0,zero,finsetup 	# si es 0 hace return
	lw	t0,SO_SET1($fp)		# t0 = set1
	lbu	t1,0(t0)		# t1 = *set1
	sll	t1,t1,2			# t1 = *set1 *4 para obtener offset dentro de map
	lw	t2,SO_MAP($fp)		# t2 = map
	addu	t2,t2,t1		# t2 = map + offsetmap
	li 	t1,1			# t1 = 1
	sw	t1,0(t2)		# map[(unsigned char) *set1] = 1
	addu	t0,t0,1			# set1++
	sw	t0,SO_SET1($fp)
	b 	swh1
swh2:					# while(*set1 && *set2)
	lw	t0,SO_SET1($fp)
	lb	t0,0(t0)		# t0 = *set1
	beq	t0,zero,nswh2
	lw	t1,SO_SET2($fp)
	lb	t1,0(t1)		# t1 = *set2
	beq	t1,zero,nswh2
	lw	t0,SO_SET1($fp)		# t0 = set1
	lbu	t1,0(t0)		# t1 = *set1
	lw	t2,SO_SET2($fp)		# t2 = set2
	lbu	t3,0(t2)		# t3 = *set2
	lw 	t4,SO_MAP($fp)		# t4 = map
	sll	t1,t1,2			# $t1 = *set1 *4 offset del map
	addu 	t4,t4,t1		# t4 = map + offsetdelmap
	sw	t3,0(t4)		# map[(unsigned char) *set1] = *set2
	addu	t0,t0,1			# set1++
	sw	t0,SO_SET1($fp)
	addu	t2,t2,1			# set2++
	sw	t2,SO_SET2($fp)		
	b	swh2
nswh2:
	lw 	t0,SO_SET2($fp)		# t0 = set2
	addu	t0,t0,-1		# t0 = set2 - 1	
	lbu	t0,0(t0)		# t0 = *set2
	sb	t0,SO_LASTCH($fp)
swh3:
	lw	t0,SO_SET1($fp)		# t0 = set1
	lb	t0,0(t0)		# t0 = *set1
	beq	t0,zero,finsetup	
	lw	t0,SO_SET1($fp)		# t0 = set1
	lbu	t1,0(t0)		# t1 = *set1
	sll	t1,t1,2			# $t1 = *set1 *4 offset del map		
	lw	t2,SO_MAP($fp)		# t2 = map
	addu	t2,t2,t1		# t2 = map + offsetmap
	lb	t1,SO_LASTCH($fp)	# t1 = lastch
	sw	t1,0(t2)		# map[(unsigned char)*set1] = lastch
	addu	t0,t0,1			# set1++
	sw	t0,SO_SET1($fp)
	b 	swh3
finsetup:
	move	sp,$fp
	lw	ra,SO_RA(sp)
	lw	$fp,SO_FP(sp)
	addu	sp,sp,SO_SIZE			
	j	ra
	.end	setup	

	.rdata	
msgerr1:
	.ascii	"error writing to stdout\000" #strlen = 24
	
#-----------------------------myputchar------------------------------
	.text
	.align	2
	.ent	myputchar
myputchar:
	.frame	$fp,PC_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,PC_SIZE
	.cprestore PC_GP		# Equivale a sw gp,PC_GP(sp)
	sw	ra,PC_RA(sp)		# guardo ra,fp,gp
	sw	$fp,PC_FP(sp)

	move	$fp,sp
	sb	a0,PC_CH($fp)		# Guardo ch
	li	v0, SYS_write 		
	li	a0,1        		# a0: file descriptor number.
	la	a1,PC_CH($fp)   	# a1: output data pointer.
	li	a2,1        		# a2: output byte size.
	syscall
	beq	a3,zero,finmyputchar
	li	v0,SYS_write 		# en caso de error imprimo que hubo error de escritura
	li	a0,1        		# a0: file descriptor number.
	la	a1,msgerr1	   	# a1: output data pointer.
	li	a2,24       		# a2: output byte size.
	syscall
finmyputchar:
	move	sp,$fp
	lw	ra,PC_RA(sp)
	lw	$fp,PC_FP(sp)
	addu	sp,sp,PC_SIZE			
	j	ra
	.end	myputchar
	
	.rdata		
msgerr2:
	.ascii	"error reading from stdin\000" #strlen = 25
#-----------------------------mygetchar------------------------------
	.text
	.align	2
	.ent	mygetchar
mygetchar:
	.frame	$fp,GC_SIZE,ra
	.set noreorder
	.cpload	t9
	.set	reorder
	subu	sp,sp,GC_SIZE
	.cprestore GC_GP		# Equivale sw gp,GC_GP(sp)
	sw	ra,GC_RA(sp)		# guardo ra,fp,gp
	sw	$fp,GC_FP(sp)
	
	move	$fp,sp
	sw	zero,GC_CH($fp)		# inicializo ch
	li	v0, SYS_read 
	li	a0, 0        		# a0: file descriptor number.
	la	a1,GC_CH($fp)		# a1: data pointer.
	li	a2, 1        		# a2: available space.
	syscall				# ch = getchar()
	bne	a3,zero,readerror	# si a3 no es 0 hubo error
	beq	v0,zero,mygeteof	# si v0 = 0 es eof retornara -1
	li	t0, 1			
	bne	v0,t0,readerror		# si se leyo una cantidad diferente a 1 es error
	b	finmygetchar
readerror:
	li	v0,SYS_write 		# en caso de error imprimo que hubo error de escritura
	li	a0,1        		# a0: file descriptor number.
	la	a1,msgerr2	   	# a1: output data pointer.
	li	a2,25       		# a2: output byte size.
	syscall	
	b	finmygetchar
mygeteof:
	li	t0,-1
	sw	t0,GC_CH($fp)		# en caso de eof retornara -1 en v0
finmygetchar:
	lw	v0,GC_CH($fp)
	move	sp,$fp
	lw	ra,GC_RA(sp)
	lw	$fp,GC_FP(sp)
	addu	sp,sp,GC_SIZE			
	j	ra
	.end	mygetchar	
	.local	map2
	.comm	map2,1024,4	
	
	
	
	
