#######################################################################################
#
# CSCB58 Winter 2023 Assembly Final Project
# University of Toronto, Scarborough
#
# Alex Zeng, 1008064381, zengwe11, a.zeng@mail.utoronto.ca
#
# Bitmap Display Configuration:
# - Unit width in pixels: 8
# - Unit height in pixels: 8
# - Display width in pixels: 256
# - Display height in pixels: 256
# - Base Address for Display: 0x10008000 ($gp)
#
#####################################################################

.eqv 	BASE_ADDRESS 0x10008000
.eqv 	dirt 0x783a0d
.eqv 	background 0x21dedb
.eqv 	walt 0x000001
.eqv	walt_t 0x156321
.eqv	walt_s 0xe0c6a6
.eqv	border 0x21deda
.eqv	platform 0x000000
.eqv 	gus_t 0xd9d06a
.eqv	gus_s 0x634829
.eqv	rock 0x949494
.eqv	cop_t 0x000003
.eqv	cop_s 0xe0c6a7
.eqv 	bullet 0xdb1d1d
.eqv 	green 0x1cc730
.eqv	yellow 0xd7fa0f
.eqv	red 0xff0d0d
.eqv	white 0xffffff
.eqv	logo 0x0D3E10
.eqv 	saul_h 0x5c301f
.eqv 	saul_s 0xe3b27d

.text
.globl main

main:	
	li $s0 BASE_ADDRESS
	li $s1 1
	li $s2 0
	
menu:		
	# Background to black
	li $a0 4096
	li $a1 0
	li $a2 0
	jal painter
	
	# Logo
	li $a0 11
	li $a1 2360
	li $a2 logo
	jal painter
	li $a1 2616
	jal painter
	li $a1 2872
	jal painter
	li $a1 3128
	jal painter
	li $a1 3384
	jal painter
	li $a1 3640
	jal painter
	li $a1 3896
	jal painter
	li $a1 4152
	jal painter
	li $a1 4408
	jal painter
	li $a1 4664
	jal painter
	li $a1 4920
	jal painter
	
	li $a1 5220
	jal painter
	li $a1 5476
	jal painter
	li $a1 5732
	jal painter
	li $a1 5988
	jal painter
	li $a1 6244
	jal painter
	li $a1 6500
	jal painter
	li $a1 6756
	jal painter
	li $a1 7012
	jal painter
	li $a1 7268
	jal painter
	li $a1 7524
	jal painter
	li $a1 7780
	jal painter
	
	# B
	li $a0 9
	li $a1 2620
	li $a2 white
	jal vp
	li $a0 3
	li $a1 2888
	jal vp
	li $a1 3912
	jal vp
	sw $a2 2624($s0)
	sw $a2 2628($s0)
	sw $a2 3648($s0)
	sw $a2 3652($s0)
	sw $a2 4672($s0)
	sw $a2 4676($s0)
	
	# r
	li $a0 6
	li $a1 3408
	jal vp
	sw $a2 3668($s0)
	sw $a2 3672($s0)
	sw $a2 3676($s0)
	sw $a2 3932($s0)
	
	#e
	li $a0 5
	li $a1 3688
	jal vp
	li $a0 3
	li $a1 3696
	jal vp
	sw $a2 3692($s0)
	sw $a2 4204($s0)
	sw $a2 4716($s0)
	sw $a2 4720($s0)
	
	# a
	li $a0 5
	li $a1 3712
	jal vp
	li $a0 3
	li $a1 4216
	jal vp
	sw $a2 3708($s0)
	sw $a2 3704($s0)
	sw $a2 4220($s0)
	sw $a2 4732($s0)
	sw $a2 4740($s0)
	
	# k
	li $a0 8
	li $a1 2956
	jal vp
	sw $a2 4240($s0)
	sw $a2 4244($s0)
	sw $a2 3988($s0)
	sw $a2 3480($s0)
	sw $a2 3736($s0)
	sw $a2 4504($s0)
	sw $a2 4760($s0)
	
	# i 
	li $a0 4
	li $a1 4000
	jal vp
	sw $a2 3488($s0)
	
	# n 
	li $a0 5
	li $a1 3752
	jal vp
	li $a0 4
	li $a1 4020
	jal vp
	sw $a2 4016($s0)
	sw $a2 4012($s0)
	
	# g
	li $a0 4
	li $a1 4028
	jal vp
	li $a0 7
	li $a1 4040
	jal vp
	sw $a2 4036($s0)
	sw $a2 4032($s0)
	sw $a2 4804($s0)
	sw $a2 4800($s0)
	sw $a2 3736($s0)
	sw $a2 4504($s0)
	sw $a2 4760($s0)
	sw $a2 5572($s0)
	sw $a2 5568($s0)
	sw $a2 5564($s0)
	sw $a2 5308($s0)
	
	# B
	li $a0 9
	li $a1 5480
	li $a2 white
	jal vp
	li $a0 3
	li $a1 5748
	jal vp
	li $a1 6772
	jal vp
	sw $a2 5484($s0)
	sw $a2 5488($s0)
	sw $a2 6508($s0)
	sw $a2 6512($s0)
	sw $a2 7532($s0)
	sw $a2 7536($s0)
	
	# a
	li $a0 5
	li $a1 6532
	jal vp
	li $a0 3
	li $a1 7036
	jal vp
	sw $a2 6528($s0)
	sw $a2 6524($s0)
	sw $a2 7040($s0)
	sw $a2 7552($s0)
	sw $a2 7560($s0)
	
	# d
	li $a0 8
	li $a1 5792
	jal vp
	li $a0 4
	li $a1 6804
	jal vp
	sw $a2 6808($s0)
	sw $a2 6812($s0)
	sw $a2 7576($s0)
	sw $a2 7580($s0)
	
	# Start button
	li $a0 22
	li $a1 11048
	li $a2 logo
	jal painter
	li $a1 11304
	jal painter
	li $a1 11560
	jal painter
	li $a1 11816
	jal painter
	li $a1 12072
	jal painter
	li $a1 12328
	jal painter
	li $a1 12584
	jal painter
	
	# S
	li $t0 white
	sw $t0 11316($s0)
	sw $t0 11312($s0)
	sw $t0 11308($s0)
	sw $t0 11564($s0)
	sw $t0 11820($s0)
	sw $t0 11824($s0)
	sw $t0 11828($s0)
	sw $t0 12084($s0)
	sw $t0 12340($s0)
	sw $t0 12336($s0)
	sw $t0 12332($s0)
	
	# t
	sw $t0 11580($s0)
	sw $t0 11584($s0)
	sw $t0 11588($s0)
	sw $t0 11328($s0)
	sw $t0 11840($s0)
	sw $t0 12096($s0)
	sw $t0 12352($s0)
	
	# a
	sw $t0 12364($s0)
	sw $t0 12368($s0)
	sw $t0 12372($s0)
	sw $t0 12376($s0)
	sw $t0 12108($s0)
	sw $t0 11852($s0)
	sw $t0 11856($s0)
	sw $t0 11860($s0)
	sw $t0 12116($s0)
	
	# r
	sw $t0 12384($s0)
	sw $t0 12128($s0)
	sw $t0 11872($s0)
	sw $t0 11616($s0)
	sw $t0 11876($s0)
	sw $t0 11880($s0)
	sw $t0 12136($s0)
	
	# t
	sw $t0 11636($s0)
	sw $t0 11640($s0)
	sw $t0 11632($s0)
	sw $t0 11380($s0)
	sw $t0 11892($s0)
	sw $t0 12148($s0)
	sw $t0 12404($s0)
	
	# Exit button
	li $a0 15
	li $a1 11168
	li $a2 logo
	jal painter
	li $a1 11424
	jal painter
	li $a1 11680
	jal painter
	li $a1 11936
	jal painter
	li $a1 12192
	jal painter
	li $a1 12448
	jal painter
	li $a1 12704
	jal painter
	
	# E
	li $t0 white
	sw $t0 11940($s0)
	sw $t0 11944($s0)
	sw $t0 11948($s0)
	sw $t0 11428($s0)
	sw $t0 11432($s0)
	sw $t0 11436($s0)
	sw $t0 11684($s0)
	sw $t0 12196($s0)
	sw $t0 12452($s0)
	sw $t0 12456($s0)
	sw $t0 12460($s0)
	
	# x
	sw $t0 11956($s0)
	sw $t0 11964($s0)
	sw $t0 12216($s0)
	sw $t0 12468($s0)
	sw $t0 12476($s0)
	
	# i
	sw $t0 12484($s0)
	sw $t0 12228($s0)
	sw $t0 11972($s0)
	sw $t0 11460($s0)
	
	# t
	sw $t0 12496($s0)
	sw $t0 12240($s0)
	sw $t0 11984($s0)
	sw $t0 11728($s0)
	sw $t0 11472($s0)
	sw $t0 11732($s0)
	sw $t0 11724($s0)
	
m_loop: 
	beq $s1 1 if_start
if_exit:
	li $t3 0
	addi $a0 $s0 10544
	jal del_ch

	addi $s7 $s0 10664
	jal set_walt
	
	
	li $a0 24
	li $a1 10788
	li $a2 0
	jal painter
	li $a1 12836
	jal painter
	sw $a2 11044($s0)
	sw $a2 11300($s0)
	sw $a2 11556($s0)
	sw $a2 11812($s0)
	sw $a2 12068($s0)
	sw $a2 12324($s0)
	sw $a2 12580($s0)
	sw $a2 11136($s0)
	sw $a2 11392($s0)
	sw $a2 11648($s0)
	sw $a2 11904($s0)
	sw $a2 12160($s0)
	sw $a2 12416($s0)
	sw $a2 12672($s0)	
		
	li $a0 17
	li $a1 10908
	li $a2 red
	jal painter
	li $a1 12956
	jal painter
	
	sw $a2 11164($s0)
	sw $a2 11420($s0)
	sw $a2 11676($s0)
	sw $a2 11932($s0)
	sw $a2 12188($s0)
	sw $a2 12444($s0)
	sw $a2 12700($s0)
	sw $a2 11228($s0)
	sw $a2 11484($s0)
	sw $a2 11740($s0)
	sw $a2 11996($s0)
	sw $a2 12252($s0)
	sw $a2 12508($s0)
	sw $a2 12764($s0)
	j check_key
if_start:
	addi $s7 $s0 10544
	jal set_walt
	
	li $t3 0
	addi $a0 $s0 10664
	jal del_ch
	
	li $a0 24
	li $a1 10788
	li $a2 red
	jal painter
	li $a1 12836
	jal painter
	sw $a2 11044($s0)
	sw $a2 11300($s0)
	sw $a2 11556($s0)
	sw $a2 11812($s0)
	sw $a2 12068($s0)
	sw $a2 12324($s0)
	sw $a2 12580($s0)
	sw $a2 11136($s0)
	sw $a2 11392($s0)
	sw $a2 11648($s0)
	sw $a2 11904($s0)
	sw $a2 12160($s0)
	sw $a2 12416($s0)
	sw $a2 12672($s0)	
		
	li $a0 17
	li $a1 10908
	li $a2 0
	jal painter
	li $a1 12956
	jal painter
	
	sw $a2 11164($s0)
	sw $a2 11420($s0)
	sw $a2 11676($s0)
	sw $a2 11932($s0)
	sw $a2 12188($s0)
	sw $a2 12444($s0)
	sw $a2 12700($s0)
	sw $a2 11228($s0)
	sw $a2 11484($s0)
	sw $a2 11740($s0)
	sw $a2 11996($s0)
	sw $a2 12252($s0)
	sw $a2 12508($s0)
	sw $a2 12764($s0)
	
	
check_key:
	li $v0 32
	li $a0 25
	syscall
	
	li $t9 0xffff0000
	lw $t8 0($t9)
	beq $t8 1 prssed
	j m_loop
prssed:
	lw $t2 4($t9)
	beq $t2 112 init
	beq $t2 97 st
	beq $t2 100 et
	beq $t2 10 enter
	j m_loop
	
st:	addi $s1 $zero 1
	j m_loop
	
et:	addi $s1 $zero 0
	j m_loop

enter: 	bgt $s2 36 choose

	li $v0 32
	li $a0 25
	syscall
	
	addi $t0 $zero 4
	div $s2 $t0
	mfhi $t0
	addi $s2 $s2 1
	bnez $t0 enter
	bgt $s2 17 md
	
mu:	add $a0 $zero $s7
	jal del_ch
	addi $s7 $s7 -256
	jal set_walt
	j enter
	
md:	add $a0 $zero $s7
	jal del_ch
	addi $s7 $s7 256
	jal set_walt
	j enter
	j enter

choose:	li $v0 32
	li $a0 200
	syscall
	
	beq $s1 1 init
	j END

init:	
	li $t3 background
	addi $s5 $zero -1
	addi $s6 $zero 0
	addi $s4 $zero 0
	addi $s1 $zero 0
	addi $s2 $s0 10832
	addi $s3 $s0 6348
	li $a3 3
	
	
	addi $t0 $zero 15872
	addi $t1 $zero 16384
	
	

for1: 	# Set bottom layer of ground to be dirt
	beq $t0 $t1 end1
	add $t2 $s0 $t0
	li $t4 dirt
	sw $t4 0($t2)
	addi $t0 $t0 4
	j for1
	
end1:
	
	addi $t0 $zero 0
	addi $t1 $zero 15872
	
for2: 	# Set background colour
	beq $t0 $t1 end2
	add $t2 $s0 $t0
	sw $t3 0($t2)
	addi $t0 $t0 4
	j for2
end2:   
	
	addi $t0 $zero 0
	addi $t1 $zero 15872
for3:	# Set border
	beq $t0 $t1 end3
	add $t2 $s0 $t0
	li $t4 border
	sw $t4 0($t2)
	sw $t4 252($t2)
	addi $t0 $t0 256
	j for3
end3:	
	# Set 1st platform
	li $a0 10
	li $a1 14188
	jal set_plat 
	
	# Set 2nd platform
	li $a0 21
	li $a1 12716
	jal set_plat 
	
	# Set 3rd platform
	li $a0 19
	li $a1 11084
	jal set_plat 
	
	# Set 4th platform
	li $a0 10
	li $a1 9516
	jal set_plat 
	
	# Set 5th platform
	li $a0 10
	li $a1 7936
	jal set_plat 
	
	# Set 6th platform
	li $a0 20
	li $a1 8036
	jal set_plat 
	
	# Set 7th platform
	li $a0 14
	li $a1 8136
	jal set_plat 
	
	# Set 8th platform
	li $a0 21
	li $a1 6528
	jal set_plat 
	
	sw $zero 6272($s0)
	sw $zero 6016($s0)
	sw $zero 5760($s0)
	sw $zero 5504($s0)
	
	# Set 9th platform
	li $a0 10
	li $a1 4916
	jal set_plat 
	
	# Set 10th platform
	li $a0 7
	li $a1 8368
	jal set_plat
	
	# Set final platform
	addi $t0 $zero 3328
	addi $t1 $zero 3360
	addi $t4 $zero 2
	
for_f:	beq $t0 $t1 gus
	add $t2 $s0 $t0
	sw $t4 0($t2)
	addi $t0 $t0 4
	j for_f
	
gus:    # Make Gustavo Fring
	sw $zero 3080($s0)
	li $t0 gus_t
	sw $t0 2824($s0)
	sw $t0 2568($s0)
	sw $t0 2572($s0)
	sw $t0 2564($s0)
	li $t0 gus_s
	sw $t0 2312($s0)
	sw $t0 2828($s0)
	sw $t0 2820($s0)

set_bar:
	li $a0 25
	li $a1 664
	jal set_plat
	
	li $a0 25
	li $a1 1432
	jal set_plat
	
	sw $zero 920($s0)
	sw $zero 1176($s0)
	sw $zero 1208($s0)
	sw $zero 952($s0)
	sw $zero 984($s0)
	sw $zero 1240($s0)
	sw $zero 1016($s0)
	sw $zero 1272($s0)
	
	li $a0 7
	li $a1 924
	li $a2 green
	jal set_health
	
	li $a0 7
	li $a1 956
	li $a2 yellow
	jal set_health
	
	li $a0 7
	li $a1 988
	li $a2 red
	jal set_health
	
set_rocks:
	
	# Set 1st rock
	li $a0 13940
	jal set_rock
	
	# Set 2nd rock
	li $a0 12480
	jal set_rock
	
	# Set 4th rock
	li $a0 12528
	jal set_rock
	
	# Set 5th rock
	li $a0 9268
	jal set_rock
	
	# Set 6th rock
	li $a0 7916
	jal set_rock
	
	# Set 7th rock
	li $a0 4688
	jal set_rock

set_cops:

	# Set cop
	addi $a0 $s0 15632
	jal set_cop
	
	# Set cop
	addi $a0 $s0 12504
	jal set_cop
	
	# Set cop
	addi $a0 $s0 15656
	jal set_cop
	
	# Set cop
	addi $a0 $s0 7708
	jal set_cop
	

	
	j start

painter: # painter( $a0 : how many blocks, $a1 : start address, $a2 : colour)
	add $t0 $zero $zero
	add $t2 $s0 $a1
		
forp: 	beq $t0 $a0 endp 
	sw $a2 0($t2)
	addi $t2 $t2 4
	addi $t0 $t0 1
	j forp
	
endp:
	jr $ra

vp: 	# vp( $a0 : how many blocks, $a1 : start address, $a2 : colour)
	add $t0 $zero $zero
	add $t2 $s0 $a1
		
forv: 	beq $t0 $a0 endv 
	sw $a2 0($t2)
	addi $t2 $t2 256
	addi $t0 $t0 1
	j forv
	
endv:
	jr $ra

set_plat: # set_plat( $a0 : how may blocks, $a1 : start address)	
	add $t0 $zero $zero
	add $t2 $s0 $a1
		
for_p: 	beq $t0 $a0 end_p 
	li $t4 platform
	sw $t4 0($t2)
	addi $t2 $t2 4
	addi $t0 $t0 1
	j for_p
	
end_p:
	jr $ra

set_rock: # set_rock( $a0 : address for center of rock)
	li $t0 rock
	add $a0 $a0 $s0
	sw $t0 0($a0)
	sw $t0 4($a0)
	sw $t0 -4($a0)
	sw $t0 -256($a0)
	jr $ra
	
set_cop: # set_cop( $a0 : address for leg)
	li $t0 cop_t
	sw $t0 0($a0)
	sw $t0 -256($a0)
	sw $t0 -512($a0)
	sw $t0 -508($a0)
	sw $t0 -516($a0)
	li $t0 cop_s
	sw $t0 -768($a0)
	sw $t0 -252($a0)
	sw $t0 -260($a0)
	jr $ra

del_ch: # del_ch( $a0 : address for leg)
	sw $t3 0($a0)
	sw $t3 -256($a0)
	sw $t3 -512($a0)
	sw $t3 -508($a0)
	sw $t3 -516($a0)
	sw $t3 -768($a0)
	sw $t3 -252($a0)
	sw $t3 -260($a0)
	jr $ra
	
set_walt:
	addi $t4 $zero 0x1f1d1d
	sw $t4 0($s7)
	li $t0 walt_t
	sw $t0 -256($s7)
	sw $t0 -512($s7)
	sw $t0 -508($s7)
	sw $t0 -516($s7)
	li $t0 walt_s
	sw $t0 -768($s7)
	sw $t0 -252($s7)
	sw $t0 -260($s7)
	jr $ra
	
set_health:
	add $t0 $zero $zero
	add $t2 $s0 $a1
	
for_h: 	beq $t0 $a0 end_h
	sw $a2 0($t2)
	sw $a2 256($t2)
	addi $t2 $t2 4
	addi $t0 $t0 1
	j for_h
	
end_h:
	jr $ra
	
del_rock:
	addi $t0 $zero rock
	lw $t1 -4($s7)
	bne $t1 $t0 a
	sw $t3 -4($s7)
a:	lw $t1 -8($s7)
	bne $t1 $t0 b
	sw $t3 -8($s7)
b:	lw $t1 -12($s7)
	bne $t1 $t0 c
	sw $t3 -12($s7)
c:	lw $t1 -264($s7)
	bne $t1 $t0 d
	sw $t3 -264($s7)
d:	lw $t1 4($s7)
	bne $t1 $t0 e
	sw $t3 4($s7)
e:	lw $t1 8($s7)
	bne $t1 $t0 f
	sw $t3 8($s7)
f:	lw $t1 12($s7)
	bne $t1 $t0 g
	sw $t3 12($s7)
g:	lw $t1 -248($s7)
	bne $t1 $t0 h
	sw $t3 -248($s7)
h:	lw $t1 256($s7)
	bne $t1 $t0 i
	sw $t3 256($s7)
i:	lw $t1 252($s7)
	bne $t1 $t0 z
	sw $t3 252($s7)
z:	lw $t1 248($s7)
	bne $t1 $t0 k
	sw $t3 248($s7)
k:	lw $t1 260($s7)
	bne $t1 $t0 l
	sw $t3 260($s7)
l:	lw $t1 264($s7)
	bne $t1 $t0 m
	sw $t3 264($s7)
m:	lw $t1 512($s7)
	bne $t1 $t0 n
	sw $t3 512($s7)
n:	lw $t1 508($s7)
	bne $t1 $t0 o
	sw $t3 508($s7)
o:	lw $t1 516($s7)
	bne $t1 $t0 p
	sw $t3 516($s7)
p:	jr $ra	
	

start:	
	addi $s7 $s0 15848
	jal set_walt
	

	addi $t1 $s0 15616
PLAY:	beq $s7 $t1 END

	li $t9 0xffff0000
	lw $t8 0($t9)
	beq $t8 1 pressed
	
	bne $s5 -1 continue
	j continue
	
	
	

	

	
pressed:
	lw $t2 4($t9)
	beq $t2 112 init
	beq $t2 97 move_left
	beq $t2 100 move_right
	beq $t2 119 do_jump
	beq $t2 32 do_jump
	j continue
	
move_left:
	lw $t5 -4($s7)
	bne $t3 $t5 continue
	lw $t5 -264($s7)
	bne $t3 $t5 continue
	lw $t5 -520($s7)
	bne $t3 $t5 continue
	lw $t5 -772($s7)
	bne $t3 $t5 continue
	
	add $a0 $zero $s7
	jal del_ch
	addi $s7 $s7 -4
	jal set_walt
	j continue
	
move_right:
	lw $t5 4($s7)
	bne $t3 $t5 continue
	lw $t5 -248($s7)
	bne $t3 $t5 continue
	lw $t5 -504($s7)
	bne $t3 $t5 continue
	lw $t5 -764($s7)
	bne $t3 $t5 continue
	
	add $a0 $zero $s7
	jal del_ch
	addi $s7 $s7 4
	jal set_walt
	j continue

do_jump:
	lw $t0 256($s7)
	bne $t0 $t3 jump
	lw $t0 4($s7)
	bne $t0 $t3 jump
	lw $t0 -4($s7)
	bne $t0 $t3 jump
	j continue
jump: 	
	add $s5 $zero $zero
	j move_up

continue:
	
mup_con: beq $s5 -1 done_up
	
move_up:
	addi $t2 $zero 20
	div $s5 $t2
	mfhi $t2
	
	beq $s5 160 stopj
	bnez $t2 skipj
	lw $t2 -1024($s7)
	bne $t2 $t3 stopj
	lw $t2 -772($s7)
	bne $t2 $t3 stopj
	lw $t2 -764($s7)
	bne $t2 $t3 stopj

up:	add $a0 $zero $s7
	jal del_ch
	addi $s7 $s7 -256
	jal set_walt
	
skipj:	addi $s5 $s5 5
	j done_up
	
stopj: 	addi $s5 $zero -1

done_up:
	bne $s5 -1 done
	lw $t5 256($s7)
	bne $t5 $t3 done
	lw $t5 -4($s7)
	bne $t5 $t3 done
	lw $t5 4($s7)
	bne $t5 $t3 done
move_down:
	addi $t2 $zero 20
	div $s6 $t2
	mfhi $t2
	
	bnez $t2 down_done

down:	
	add $a0 $zero $s7 
	jal del_ch
	addi $s7 $s7 256
	jal set_walt
	
down_done:
	addi $s6 $t2 5
done:
	
bullets:
	li $t0 bullet
	beqz $s4 shoot
	
	addi $t4 $zero 4
	div $s4 $t4
	mfhi $t1 
	beqz $t1 traverse
	j update_b
	
shoot:	
	sw $t3 15308($s0)
	addi $t7 $s0 15152
	sw $t0 0($t7)
	sw $t3 7360($s0)
	addi $t6 $s0 7204
	sw $t0 0($t7)
	j update_b
traverse:
	sw $t3 0($t7)
	addi $t7 $t7 4
	sw $t0 0($t7)
	sw $t3 0($t6)
	addi $t6 $t6 4
	sw $t0 0($t6)
update_b:
	addi $s4 $s4 1
	addi $t0 $zero 160
	div $s4 $t0
	mfhi $s4

cop_move:
	addi $t0 $zero 20
	div $s1 $t0
	mfhi $t0
	bnez $t0 cop_update 
	blt $s1 320 cop_right
	j cop_left

cop_right:
	add $a0 $zero $s2 
	jal del_ch
	addi $s2 $s2 4
	add $a0 $zero $s2 
	jal set_cop
	
	add $a0 $zero $s3 
	jal del_ch
	addi $s3 $s3 -4
	add $a0 $zero $s3 
	jal set_cop
	j cop_update
cop_left:
	add $a0 $zero $s2 
	jal del_ch
	addi $s2 $s2 -4
	add $a0 $zero $s2 
	jal set_cop
	
	add $a0 $zero $s3 
	jal del_ch
	addi $s3 $s3 4
	add $a0 $zero $s3 
	jal set_cop

cop_update:
	addi $s1 $s1 2
	addi $t0 $zero 640
	div $s1 $t0
	mfhi $s1 
	

check:
	lw $t0 256($s7) # Check if we reached gus
	beq $t0 2 win
	
	li $t1 bullet # Check if hit by bullet
	lw $t0 256($s7)
	beq $t0 $t1 saul
	lw $t0 4($s7)
	beq $t0 $t1 saul
	lw $t0 -4($s7)
	beq $t0 $t1 saul
	lw $t0 -248($s7)
	beq $t0 $t1 saul
	lw $t0 -264($s7)
	beq $t0 $t1 saul
	lw $t0 -520($s7)
	beq $t0 $t1 saul
	lw $t0 -504($s7)
	beq $t0 $t1 saul
	lw $t0 -764($s7)
	beq $t0 $t1 saul
	lw $t0 -772($s7)
	beq $t0 $t1 saul
	lw $t0 -1024($s7)
	beq $t0 $t1 saul
	lw $t0 -256($s7)
	beq $t0 $t1 saul
	lw $t0 -512($s7)
	beq $t0 $t1 saul
	lw $t0 -508($s7)
	beq $t0 $t1 saul
	lw $t0 -768($s7)
	beq $t0 $t1 saul
	lw $t0 -516($s7)
	beq $t0 $t1 saul
	
	
	li $t1 3 # Check if touching cop
	lw $t0 256($s7)
	beq $t0 $t1 saul
	lw $t0 4($s7)
	beq $t0 $t1 saul
	lw $t0 -4($s7)
	beq $t0 $t1 saul
	lw $t0 -248($s7)
	beq $t0 $t1 saul
	lw $t0 -264($s7)
	beq $t0 $t1 saul
	lw $t0 -520($s7)
	beq $t0 $t1 saul
	lw $t0 -504($s7)
	beq $t0 $t1 saul
	li $t1 cop_s
	lw $t0 256($s7)
	beq $t0 $t1 saul
	lw $t0 4($s7)
	beq $t0 $t1 saul
	lw $t0 -4($s7)
	beq $t0 $t1 saul
	
	# Check rock
	li $t1 rock
	lw $t0 256($s7)
	beq $t0 $t1 hit_rock
	lw $t0 4($s7)
	beq $t0 $t1 hit_rock
	lw $t0 -4($s7)
	beq $t0 $t1 hit_rock
	j check_health
	
hit_rock:
	addi $a3 $a3 -1
	jal del_rock
	li $t3 red
	add $a0 $zero $s7
	jal del_ch
	li $t3 background
	li $v0 32
	li $a0 100
	syscall
	jal set_walt
	

check_health:
	beqz $a3 no_product
	beq $a3 3 three
	beq $a3 2 two
	
one:	li $a0 7
	li $a1 956
	add $a2 $zero $t3
	jal set_health
	j three
	
two:	li $a0 7
	li $a1 924
	add $a2 $zero $t3
	jal set_health
	
three:
	li $v0 32
	li $a0 25
	syscall
	
	j PLAY

l_funct:

P: 	
	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	add $a1 $a1 $s0
	sw $a2 4($a1)
	sw $a2 8($a1)
	sw $a2 264($a1)  
	sw $a2 520($a1)  
	sw $a2 516($a1)
	jr $t8 
	
Y: 	
	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 3
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	addi $a1 $a1 508
	jal vp
	jr $t8 
	
A:
	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	add $a1 $a1 $s0
	sw $a2 -4($a1)
	sw $a2 508($a1)
	jr $t8 

E:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	add $a1 $a1 $s0
	sw $a2 4($a1)
	sw $a2 8($a1)
	sw $a2 1032($a1)
	sw $a2 1028($a1)    

	sw $a2 516($a1)
	jr $t8 
	
T:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	add $a1 $a1 $s0
	sw $a2 4($a1)
	sw $a2 -4($a1)
	jr $t8

C:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	add $a1 $a1 $s0
	sw $a2 4($a1)
	sw $a2 1028($a1)
	sw $a2 8($a1)
	sw $a2 1032($a1)
	jr $t8
L:	
	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	add $a1 $a1 $s0
	sw $a2 1028($a1)
	sw $a2 1032($a1)
	jr $t8
S:		
	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	add $a1 $a1 $s0
	sw $a2 -4($a1)
	sw $a2 508($a1)
	sw $zero 256($a1)
	sw $a2 1020($a1)
	sw $zero 760($a1)
	jr $t8

U:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	add $a1 $a1 $s0
	sw $a2 1020($a1)
	jr $t8
	
O:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 5
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	add $a1 $a1 $s0
	sw $a2 1020($a1)
	sw $a2 -4($a1)
	jr $t8

flex:	add $a1 $zero $a0
	add $t8 $zero $ra
	li $a0 3
	li $a2 white
	jal vp
	addi $a1 $a1 8
	jal vp
	add $a1 $a1 $s0
	sw $a2 508($a1)
	sw $a2 -4($a1)
	jr $t8

win:	
	li $a0 4096
	li $a1 0
	li $a2 0
	jal painter
	
	li $a0 1092
	jal Y
	
	li $a0 1620
	jal flex
	
	li $a0 1636
	jal flex
	sw $zero 1640($s0)
	
	li $a0 5
	li $a1 1144
	li $a2 white
	jal vp
	li $a1 1160
	jal vp
	li $a0 3
	li $a1 1664
	jal vp
	sw $a2 2172($s0)
	sw $a2 2180($s0)
	
	sw $a2 2192($s0)
	sw $a2 1936($s0)
	sw $a2 1424($s0)
	
	li $a0 1688
	jal flex
	sw $zero 2204($s0)
	
	sw $a2 2220($s0)
	sw $a2 2228($s0)
	sw $a2 2236($s0)
	
	li $a0 3
	li $a1 1196
	jal vp
	li $a1 1204
	jal vp
	li $a1 1212
	jal vp
	
	li $a0 17
	li $a1 3424
	jal painter
	
	sw $a2 3676($s0)
	sw $a2 3748($s0)
	sw $a2 3928($s0)
	sw $a2 4008($s0)
	
	li $a0 6
	li $a1 4180
	jal vp
	li $a1 4268
	jal vp
	
	li $a0 6
	li $a1 5436
	jal painter
	li $a1 5552
	jal painter
	li $a1 6572
	jal painter
	li $a1 6464
	jal painter
	
	sw $a2 5692($s0)
	sw $a2 5948($s0)
	sw $a2 5952($s0)
	sw $a2 6208($s0)
	sw $a2 5828($s0)
	sw $a2 6084($s0)
	sw $a2 6080($s0)
	sw $a2 6336($s0)
	
	li $a0 3
	li $a1 6740
	jal vp
	li $a1 6828
	jal vp
	li $a1 9304
	jal vp
	li $a1 9384
	jal vp
	
	li $a0 5
	li $a1 7248
	jal vp
	li $a1 8276
	jal vp
	li $a1 7344
	jal vp
	li $a1 8364
	jal vp
	
	sw $a2 9820($s0)
	sw $a2 10076($s0)
	sw $a2 9892($s0)
	sw $a2 10148($s0)
	
	sw $a2 10336($s0)
	sw $a2 10596($s0)
	sw $a2 10856($s0)
	sw $a2 11116($s0)
	sw $a2 11376($s0)
	
	sw $a2 10400($s0)
	sw $a2 10652($s0)
	sw $a2 10904($s0)
	sw $a2 11156($s0)
	sw $a2 11408($s0)
	
	li $a0 9
	li $a1 11632
	jal painter
	
	li $a0 19
	li $a1 6492
	li $a2 walt_s
	jal painter
	li $a1 6748
	jal painter
	li $a1 7004
	jal painter
	li $a1 7260
	jal painter
	
	li $a0 5
	li $a1 8064
	jal vp
	li $a1 8068
	jal vp
	
	sw $a2 8584($s0)
	sw $a2 8840($s0)
	sw $a2 8568($s0)
	sw $a2 8824($s0)
	
	sw $a2 9100($s0)
	sw $a2 9124($s0)
	sw $a2 9076($s0)
	sw $a2 9084($s0)
	sw $a2 9052($s0)
	
	li $a0 7
	li $a1 9312
	jal painter
	li $a1 9352
	jal painter
	
	li $a0 4
	li $a1 9624
	jal vp
	li $a1 9576
	jal vp 
	li $a0 3
	li $a1 9628
	jal vp
	li $a1 9572
	jal vp 
	
	sw $a2 9568($s0)
	sw $a2 9580($s0)
	sw $a2 9632($s0)
	sw $a2 9620($s0)
	
	li $a0 9
	li $a1 10096
	jal painter
	li $a1 10864
	jal painter
	
	sw $a2 10352($s0)
	sw $a2 10356($s0)
	sw $a2 10384($s0)
	sw $a2 10380($s0)
	
	li $a0 11
	li $a1 10604
	jal painter
	
	li $a0 7
	li $a1 11124
	jal painter
	
	j buttons

saul:	
	li $a0 4096
	li $a1 0
	li $a2 0
	jal painter
	
	
	li $a0 10760
	jal E
	li $t0 white
	sw $t0 11024($s0)
	sw $t0 11536($s0)
	
	li $a0 10776
	jal E
	
	li $a0 10796
	jal T
	
	li $a0 10812
	jal T
	
	li $a0 10824
	jal E
	
	li $a0 10840
	jal A
	sw $zero 11360($s0)
	
	li $a0 10868
	jal C
	
	li $a0 10884
	jal A
	
	li $a0 10900
	jal L
	
	li $a0 10916
	jal L
	
	li $a0 10940
	jal S
	
	li $a0 10956
	jal A
	
	li $a0 10972
	jal U
	
	li $a0 10988
	jal L
	
	li $a0 1312
	jal C
	
	li $a0 1328
	jal O
	
	li $a0 1344
	jal P
	
	li $a0 1360
	jal S
	
	li $a0 1384
	jal C
	sw $a2 2160($s0)
	
	li $a0 1400
	jal O
	
	li $a0 1420
	jal T
	
	li $a0 1440
	jal Y
	
	li $a0 1456
	jal O
	
	li $a0 1472
	jal U
	
	sw $a2 2512($s0)
	sw $a2 2520($s0)
	sw $a2 2528($s0)
	
	li $a0 6
	li $a1 9592
	li $a2 saul_s
	jal painter
	
	li $a0 10
	li $a1 9328
	jal painter
	
	li $a0 12
	li $a1 9068
	jal painter
	
	li $a0 12
	li $a1 8812
	jal painter
	
	li $a0 14
	li $a1 8552
	jal painter
	
	li $a0 14
	li $a1 8296
	jal painter
	
	li $a0 14
	li $a1 8040
	jal painter
	
	li $t0 saul_h
	sw $t0 8036($s0)
	sw $t0 8096($s0)
	
	li $a0 16
	li $a1 7780
	jal painter
	
	li $a0 18
	li $a1 7520
	jal painter
	
	li $a0 18
	li $a1 7264
	jal painter
	
	li $a0 18
	li $a1 7008
	jal painter
	
	li $a0 18
	li $a1 6752
	jal painter
	
	li $a0 14
	li $a1 6504
	jal painter
	
	li $a0 14
	li $a1 6248
	jal painter
	
	li $a0 14
	li $a1 5992
	jal painter
	
	li $a0 14
	li $a1 5736
	jal painter
	
	li $a0 14
	li $a1 5480
	jal painter
	
	li $a0 14
	li $a1 5224
	jal painter
	
	li $a0 14
	li $a1 4968
	jal painter
	
	li $a0 13
	li $a1 4712
	jal painter
	
	li $a0 13
	li $a1 4456
	jal painter
	
	li $a0 12
	li $a1 4200
	jal painter
	
	li $a0 9
	li $a1 3944
	li $a2 saul_h
	jal vp
	
	li $a0 7
	li $a1 3692
	jal vp
	
	li $a1 3440
	jal vp
	
	li $a0 8
	li $a1 3444
	jal painter
	
	li $a0 10
	li $a1 3696
	jal painter
	
	li $a0 10
	li $a1 3952
	jal painter
	
	li $a0 6
	li $a1 4208
	jal painter
	
	li $a0 2
	li $a1 4720
	jal painter
	
	li $a0 3
	li $a1 4464
	jal painter
	
	li $a0 4
	li $a1 6256
	jal painter
	
	li $a1 6280
	jal painter
	
	li $t0 saul_h
	sw $t0 6508($s0)
	sw $t0 6552($s0)
	
	li $a0 11
	li $a1 4768
	jal vp
	
	li $t0 saul_h
	sw $t0 4764($s0)
	sw $t0 4508($s0)
	sw $t0 4248($s0)
	
	li $a0 6
	li $a1 5284
	jal vp
	
	li $a0 13
	li $a1 4196
	jal vp
	
	li $a0 9
	li $a1 4448
	jal vp
	
	li $a0 5
	li $a1 5212
	jal vp
	
	li $a0 3
	li $a1 6768
	li $a2 white
	jal painter
	
	li $a1 6796
	jal painter
	
	li $t0 0x0b1638
	sw $t0 6772($s0)
	sw $t0 6800($s0)
	
	li $t0 0xc79a58
	sw $t0 6532($s0)
	sw $t0 7812($s0)
	
	li $a0 5
	li $a1 6784
	add $a2 $zero $t0
	jal vp
	
	li $a0 6
	li $a1 8568
	li $a2 0x9e753a
	jal painter
	
	j buttons
	
no_product:
	li $a0 4096
	li $a1 0
	li $a2 0
	jal painter
	
	li $a0 5
	li $a1 2388
	li $a2 red
	jal vp
	li $a1 2404
	jal vp
	li $a1 2412
	jal vp
	li $a1 2420
	jal vp
	li $a1 2428
	jal vp
	li $a1 2444
	jal vp
	li $a1 2460
	jal vp
	li $a1 6684
	jal vp
	li $a1 6692
	jal vp
	
	sw $a2 2392($s0)
	sw $a2 2396($s0)
	sw $a2 2904($s0)
	sw $a2 2908($s0)
	
	sw $a2 2408($s0)
	sw $a2 2920($s0)
	
	sw $a2 3456($s0)
	sw $a2 3460($s0)
	
	sw $a2 2448($s0)
	sw $a2 2452($s0)
	sw $a2 2960($s0)
	sw $a2 3472($s0)
	sw $a2 3476($s0)
	
	sw $a2 2464($s0)
	sw $a2 2724($s0)
	sw $a2 2980($s0)
	sw $a2 3236($s0)
	sw $a2 3488($s0)
	
	sw $a2 3500($s0)
	sw $a2 3508($s0)
	sw $a2 3516($s0)
	
	sw $a2 6688($s0)
	sw $a2 7712($s0)
	
	li $a0 6708
	jal P
	
	li $a0 6724
	jal A
	sw $zero 7244($s0)
	
	li $a0 6740
	jal O
	
	li $a0 6756
	jal O
	sw $zero 6764($s0)
	sw $zero 7788($s0)
	
	li $a0 6772
	jal U
	
	li $a0 6788
	jal C
	
	li $a0 6808
	jal T
	
	li $a0 6832
	jal L
	
	li $a0 6848
	jal E
	
	li $a0 6864
	jal E
	sw $zero 7892($s0)
	sw $zero 7896($s0)
	sw $a2 7384($s0)
	
	li $a0 6884
	jal T
	
	li $a0 43
	li $a1 8492
	jal painter
	li $a1 9516
	jal painter
	
	li $a0 3
	li $a1 8748
	jal vp
	li $a1 8804
	jal vp
	li $a1 8860
	jal vp
	li $a1 8916
	jal vp
	
buttons:
	# Play again
	li $a0 36
	li $a1 13072
	li $a2 logo
	jal painter
	li $a1 13328
	jal painter
	li $a1 13584
	jal painter
	li $a1 13840
	jal painter
	li $a1 14096
	jal painter
	li $a1 14352
	jal painter
	li $a1 14608
	jal painter
	
	li $a0 13332
	jal P
	
	li $a0 5
	li $a2 white
	li $a1 13348
	jal vp
	
	li $a0 3
	li $a2 white
	li $a1 13876
	jal vp
	li $a1 13868
	jal vp
	sw $a2 13872($s0)
	sw $a2 14384($s0)
	sw $a2 14392($s0)
	
	li $a0 13372
	jal Y
	li $t0 logo
	sw $t0 13372($s0)
	sw $t0 13380($s0)
	
	li $a0 13396
	jal A
	
	li $a0 13668
	jal A
	li $t0 logo
	sw $t0 14436($s0)
	li $t0 white
	sw $t0 14696($s0)
	
	li $a0 3
	li $a2 white
	li $a1 13940
	jal vp
	li $a1 13948
	jal vp
	sw $a2 13944($s0)
	sw $a2 14456($s0)
	sw $a2 14464($s0)
	
	li $a0 3
	li $a2 white
	li $a1 13960
	jal vp
	sw $a2 13448($s0)
	
	li $a1 13968
	jal vp
	li $a1 13976
	jal vp
	sw $a2 13972($s0)
	
	# Exit
	li $a0 15
	li $a1 13236
	li $a2 logo
	jal painter
	li $a1 13492
	jal painter
	li $a1 13748
	jal painter
	li $a1 14004
	jal painter
	li $a1 14260
	jal painter
	li $a1 14516
	jal painter
	li $a1 14772
	jal painter
	
	li $a0 13496
	jal E
	li $t0 white
	sw $t0 14016($s0)
	
	sw $a2 14024($s0)
	sw $a2 14032($s0)
	sw $a2 14284($s0)
	sw $a2 14536($s0)
	sw $a2 14544($s0)
	
	li $a0 3
	li $a2 white
	li $a1 14040
	jal vp
	sw $a2 13528($s0)
	
	li $a0 5
	li $a1 13540
	jal vp
	sw $a2 13800($s0)
	sw $a2 13792($s0)
	
	li $s1 1
c_loop:
	beq $s1 1 if_pa
if_e:
	li $a0 38
	li $a1 12812
	li $a2 0
	jal painter
	li $a1 14860
	jal painter
	li $a0 7
	li $a1 13068
	jal vp	
	li $a1 13216
	jal vp	
	
		
	li $a0 17
	li $a1 12976
	li $a2 red
	jal painter
	li $a1 15024
	jal painter
	li $a0 7
	li $a1 13232
	jal vp	
	li $a1 13296
	jal vp	
	
	j check_k
if_pa:
	li $a0 38
	li $a1 12812
	li $a2 red
	jal painter
	li $a1 14860
	jal painter
	li $a0 7
	li $a1 13068
	jal vp	
	li $a1 13216
	jal vp	
		
	li $a0 17
	li $a1 12976
	li $a2 0
	jal painter
	li $a1 15024
	jal painter
	li $a0 7
	li $a1 13232
	jal vp	
	li $a1 13296
	jal vp	
	
	
check_k:
	li $v0 32
	li $a0 25
	syscall
	
	li $t9 0xffff0000
	lw $t8 0($t9)
	beq $t8 1 prssd
	j c_loop
prssd:
	lw $t2 4($t9)
	beq $t2 112 init
	beq $t2 97 pa
	beq $t2 100 ex
	beq $t2 10 ent
	j c_loop
	
pa:	addi $s1 $zero 1
	j c_loop
	
ex:	addi $s1 $zero 0
	j c_loop

ent:
	beq $s1 1 init

END: 	
	li $v0 32
	li $a0 300
	syscall
	
	li $a0 4096
	li $a1 0
	li $a2 0
	jal painter
	
	li $a0 5440
	jal T
	
	li $a0 5468
	jal A
	
	li $a0 5528
	jal Y
	
	li $a0 5544
	jal O
	
	li $a0 5560
	jal U
	
	li $a0 7292
	jal O
	
	li $a0 7308
	jal A
	
	li $a0 9040
	jal P
	
	li $a0 9056
	jal L
	
	li $a0 9072
	jal A
	
	li $a0 9088
	jal Y
	
	li $a0 9132
	jal C
	
	li $a0 5
	li $a1 5452
	li $a2 white
	jal vp
	li $a1 5460
	jal vp
	li $a1 5484
	jal vp
	li $a1 5496
	jal vp
	li $a1 5504
	jal vp
	li $a1 5512
	jal vp
	li $a1 7276
	jal vp
	li $a1 9104
	jal vp
	li $a1 9112
	jal vp
	li $a1 9124
	jal vp
	
	sw $a2 5968($s0)
	sw $a2 5744($s0)
	sw $a2 6004($s0)
	sw $a2 6020($s0)
	sw $zero 6024($s0)
	sw $a2 7280($s0)
	sw $a2 7284($s0)
	sw $a2 7792($s0)
	sw $a2 7796($s0)
	sw $zero 7828($s0)
	sw $a2 9372($s0)
	sw $a2 9632($s0)
	sw $a2 9908($s0)
	
	li $v0 10
	syscall
