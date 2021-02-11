#multiblication two element
       .data 
       #to show massege to user
msgD : .asciiz "\nplease enter two numbers\n" #define the message
msg2D : .asciiz "\nthe division is : "
EnterSize: .asciiz "\nplease enter the size of the array (an integer number between 1 and 100000) : " #this line is for appear the messege that asks the uesr to enter the size of the array
EnterNumbers:.asciiz "\nPlease enter the n numbers : " #this line is for scanning the elements of the array
OutMini:.asciiz "\nthe minimum number in the array is : "
arr: .word 0:100000 #this line is for intilaize the array
msgMuti:.asciiz "\nto make multiplication enter two numbers:\n"
outputmulti:.asciiz "multiplication is:"
Add: .asciiz "\nEnter Two integers \n"
Sum: .asciiz "summation is :"
inputchecksquareOrRectangle:.asciiz "\n please enter the four numbers: \n"
inputchecksTriangle :.asciiz "\n please enter the three numbers to check triangle\n"
final1sqaure:.asciiz "the output is (Square)\n"
final2rectangle:.asciiz "the output is (Rectangle)\n"
final3notboth:.asciiz "the output is not (Square or Rectangle)\n"
finalTriangle:.asciiz "the output is (Triangle)\n"
finalNotTriangle:.asciiz "the output is (Not Triangle)\n"
mainmssg:.asciiz "\n\n***********************************************************************\nEnter the number to choose an operation\nAdd two numbers choose 1\nmultiplication two numbers choose 2\ndivide two numbers choose 3\nget minimum of list choose 4\ndetermine if the shape is Square or Rectangle chooose 5\ndetermine if the shape is triangle or not choose 6\nTo terminate the program choose 0\n************************************************************************\n"
       .text 
main:
out1:#result from jumb the first condition add func
out2:#result from jumb the second condition multiplication two numbers
out3:#result from jumb the third condition division two numbers 
out4:#result from jumb the fourth condition get min of list
out5:#result from jumb the fifth condition add func
out6:#result from jumb the sixth condition add func
out7:#result from jumb the seventh condition add func
li $v0,4#if we need to show messege"from system call table"
la $a0,mainmssg#load the addrees of line into a0
syscall#shows messege that's tell the user that "the output is main massage"
li $v0, 5#read an integer"from system call table"
syscall#shows messege that's tell the user to enter the operation number"
add $s7,$zero,$v0#store the number of operation into register s7
li $t0,0#load value 0 into regoister t0
li $t1,1#load value 1 into regoister t1
li $t2,2#load value 2 into regoister t2
li $t3,3#load value 3into regoister t3
li $t4,4#load value 4into regoister t4
li $t5,5#load value 5 into regoister t5
li $t6,6#load value 6 into regoister t6
bne $s7,$t1,conn1#if(s7!=1)
main1:#if the condition if false means that (s7==1) so we will excute the Add func
	li $v0, 4 # 
	la $a0, Add # load addrees Add to $a0 to print "Enter Two integers "
	syscall 
	li $v0, 5 # initialize first input to $v0 
	syscall
	add $s1 , $zero,$v0 #initialize $s1 = $v0
	li $v0, 5 # initialize second input to $v0 
	syscall
	add $s2 , $zero,$v0 #initialize $s2 = $v0
	jal AddNum # call function 
	li $v0, 4  
	la $a0, Sum  # load addrees Sum to $a0 to print "summation is :"
	syscall
	# output result
	li $v0, 1  
	add $a0,$zero,$v1 # initialize $a0 = $v1 to print result to user 
	syscall
	j out1 #jumb instrc to return to the main call
conn1:#if the condition true means that (s7!=1)may be value in range(2 to 6) 
bne $s7,$t2,conn2 #if(s7!=2)
    #start main project
   main2:##if the condition if false means that (s7==2) so we will excute the multiplications
   #make v0=4 to show the massege with 'load imediat' 
   li $v0,4
   #put massege 'msg' into a0 by 'load address'
   la $a0,msgMuti
   #return to '.data'
   syscall 
   #make v0=5 to store first element in it
   li $v0,5
   syscall 
   #store first entered element in s2 from v0
   add $s2,$0,$v0
   #make v0=5 to store second element in it
   li $v0,5
   syscall 
   #store second entered element in s3 from v0
   add $s3,$0,$v0
 #make s1 = 0 to add the result in it  
 add $s1,$zero,$zero      
 #i<-t2 etirator make it start with zero  
 add $t2,$zero,$zero
 # $s2->x
 # $s3->y
 #start for loop
 For3:
 	#set t1 =1 if  t2 is less than s3 
 	slt $t1,$t2,$s3
 	#branch to exit state  if t1 =0
 	beq $t1,$zero,mExit
 	#add zero with y or first summation of s2
 	add $s1,$s1,$s2
 	#add imediat 'counter'i++' or t2++ 
 	addi $t2,$t2,1
 	#jump to for loop to repeat same sequance
 	j For3
 #at the end exit from for loop		
 mExit:
#make v0=4 to show the massege with 'load imediat'
 li $v0,4
#put massege 'msg' into a0 by 'load address'
 la $a0,outputmulti
  syscall
 #to store the product make v0=1
 li $v0,1
 #to store the product s1 into a0 to show it
 add $a0,$0,$s1
 syscall
j out2#jumb instrc to return to the main call
conn2:#if the condition true means that (s7!=2) 
bne $s7,$t5,conn5 #if(s7!=5)
main5:#if the condition if false means that (s7==1) so we will excute check square or Rectangle
li $v0,4 #if we need to show messege we need to set v0 to 4 and load the adress of the messege into a0"from system call table"
la $a0,inputchecksquareOrRectangle #load the addrees of line into a0
	syscall #shows messege asks user to enter the four numbers to check
li $v0,5 #if we need to read an integer we need to set the value of v0 to 5 and the value will return into v0 "from system call table"
	syscall # to make the user enter the first number
add $s0,$v0,$zero #store the first number into register s0;
li $v0,5 #read an integer"from system call table"
	syscall # to make the user enter the second number
add $s1,$v0,$zero#store the second number into register s1;
li $v0,5#read an integer"from system call table"
	syscall # to make the user enter the third number
add $s2,$v0,$zero#store the third number into register s2;
li $v0,5#read an integer"from system call table"
	syscall # to make the user enter the fourth number
add $s3,$v0,$zero#read an integer"from system call table"
#////////////////////////////////////////////////////////////////////////////////////////////////
#these four condition checks if the counter that i made in register t0 is not equal to 3 thats means
# the four numbers doesn't make a sqaure
#////////////////////////////////////////////////////////////////////////////////////////////////
bne $s0,$s1,true#check if the number in s0 is not equal s1
addi $t0,$t0,1 #if(the condition is false) i put 1 into register t0
true:#if the condition ture i move to the next codition
bne $s0,$s2,true1#check if the number in s0 is not equal s2
addi $t0,$t0,1#if(the condition is false) i put 1 into register t0
true1:#if the condition ture i move to the next codition
bne $s0,$s3,true2#check if the number in s0 is not equal s3
addi $t0,$t0,1#if(the condition is false) i put 1 into register t0
true2:#if the condition ture i move to the next
li  $t1,3 # i load integer value "3" into register t1
bne $t0,$t1,rectangle #then check if the t0 qual to t1 (t0, the counter)t1(the integer value "3")
li $v0,4#if we need to show messege we need to set v0 to 4 and load the adress of the messege into a0"from system call table"
la $a0,final1sqaure#load the addrees of line into a0
	syscall #shows messege that's tell the user that "the output is square"
	j RExit# i make a jumb because i don't want the check abour rectangle conditions because the previous conditon is ture!!
#////////////////////////////////////////////////////////////
#in rectangle there is three conditions to check wheather it's rectangle or not
#no.1..(0==1)&&(2==3)
#no.2..(0==2)&&(1==3)
#no.3..(0==3)&&(2==3)
#///////////////////////////////////////////////////////////////////
rectangle:# the section we w'll check on the rectangle 
#i made few condition (each 2 conditions is anding with each others)
# the following condition will be like ^_^
bne $s0,$s1,else#thats mean if (s0!=s1)
bne $s2,$s3,else1#thats mean if(s2!=s3)
#if the two conditions is false thats mean (s0==s1)&&(s2==s3)
#and thats what i need to do :)
li $v0,4#if we need to show messege"from system call table"
la $a0,final2rectangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is rectangle"
	j RExit#so i don't need to continue because the it's done;;
else:#means if the first conditon is false
else1:#means if the second conditon is false
bne $s0,$s2,else2#thats mean if (s0!=s2)
bne $s1,$s3,else3#thats mean if(s1!=s3)
#if the two conditions is false thats mean (s0==s2)&&(s1==s3)
#and that's what i need to do :)
li $v0,4#if we need to show messege"from system call table"
la $a0,final2rectangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is rectangle"
	j RExit#so i don't need to continue because the it's done;;
else3:#means if the fourth conditon is false
else2:#means if the third conditon is false
bne $s0,$s3,else4#thats mean if (s0!=s2)
bne $s1,$s2,else5#thats mean if(s1!=s3)
li $v0,4#if we need to show messege"from system call table"
la $a0,final2rectangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is rectangle"
	j RExit#so i don't need to continue because the it's done;;
else5:#means if the fifth conditon is false
else4:#means if the sixth conditon is false
#when the program reach this line thats mean we couldn't prove that's a rectangle :(
#i guess thats time to know that's not a rectangle;;
li $v0,4#if we need to show messege"from system call table"
la $a0,final3notboth#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is not a rectangle"
	RExit:#"Exit" means every jumb i made it will skip the code after the jumb and resume from this line
#/////////////////////////////////////////////////////////////////////////////////////////////////
j out5#jumb instrc to return to the main call
conn5:#if the condition true means that (s7!=5) 
bne $s7,$t6,conn6#if(s7!=6)
main6:#if the condition if false means that (s7==6) so we will excute check triangle or not
#this part is to check if the following 3 numbers that we will scan from user is Triangle or not 
# we want to prove Triangle by 
#check three conditions 
# let's make the three sides of triangle a,b,c
# "it is traingle" when (a<b+c)&&(b<c+a)&&(c<a+b)
# if any of the three conditions is false that's means "it is no triangle"
#//////////////////////////////////////////////////////////////////////////////////////////////////
li $v0,4#if we need to show messege"from system call table"
la $a0,inputchecksTriangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "Enter the three numbers"
li $v0,5 #read an integer"from system call table"
	syscall# to make the user enter the first number
add $s0,$v0,$zero#store the first number into register s0;
li $v0,5#read an integer"from system call table"
	syscall# to make the user enter the second number
add $s1,$v0,$zero#store the second number into register s1;
li $v0,5#read an integer"from system call table"
	syscall# to make the user enter the third number
add $s2,$v0,$zero#store the second number into register s1;
add $t0,$s1,$s2 #Add the value into regisrer s1 and the value into register s2 into register t0;;
add $t1,$s0,$s2#Add the value into regisrer s0 and the value into register s2 into register t1;;
add $t2,$s0,$s1#Add the value into regisrer s0 and the value into register s1 into register t2;;
li $t3,1 #load the integer value 1 into register t3
slt $t4,$s0,$t0#check if the value into register s0 is less than the value into register t0(s0<t0)
# if the check is true it will load integer value 1 into the register t4;
slt $t5,$s1,$t1#check if the value into register s0 is less than the value into register t0(s1<t1)
# if the check is true it will load integer value 1 into the register t5;
slt $t6,$s2,$t2#check if the value into register s0 is less than the value into register t0(s2<t2)
# if the check is true it will load integer value 1 into the register t6; 
# it must t4,t5,t6 have the value "1" to say it is a triangle
# the following conditions checks if(t4==1)&&(t5==1)&&(t6==1)
beq $t4,$t3,telse1 #check if(t4==t3)(t4==1)
#if the condition is "false" we will do the following
li $v0,4#if we need to show messege"from system call table"
la $a0,finalNotTriangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is "Not triangle"
	j tExit#so i don't need to continue because the it's done;;
telse1:#if the first condition is "true" i need to confirm the remaining conditions
beq $t5,$t6,telse2#check if(t5==t3)(t5==1)
li $v0,4#if we need to show messege"from system call table"
la $a0,finalNotTriangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is "Not triangle"
	j tExit#so i don't need to continue because the it's done;;
telse2:#if the second condition is "true" i need to confirm the remaining condition
beq $t6,$t3,telse3#check if(t6==t3)(t6==1)
li $v0,4#if we need to show messege"from system call table"
la $a0,finalNotTriangle#load the addrees of line into a0
	syscall#shows messege that's tell the user that "the output is "Not triangle"
	j tExit#so i don't need to continue because the it's done;;
	telse3:#if the last conditon is "true" it means that all conditions is "true" 
	#	and i will print in the next lines "it's a triangle ^_^" 
li $v0,4#if we need to show messege"from system call table"
la $a0,finalTriangle#load the addrees of line into a0
syscall#shows messege that's tell the user that "the output is "triangle"
tExit:#"Exit" means every jumb i made it will skip the code after the jumb and resume from this line
j out6#jumb instrc to return to the main call
 conn6:#if the condition true means that (s7!=6) 
 bne $s7,$t4,conn4#if(s7!=6)   
 mainMin:#if the condition if false means that (s7==4) so we will excute "get the minimum of list"
     li $v0,4 #according to the system call table if we need to show messege on the run we need to set v0 to 4 and load the adress of the messege into a0
     la $a0,EnterSize#load the addrees of line into a0
     syscall #shows messege asks user to enter the size of the array
     #if we need to read an integer we need to set the value of v0 to 5 and the value will return into v0 according to the system call table
     li $v0,5#the step we have explained in the last line
     syscall#scan the size of the array
     add $s0,$zero,$v0 #save the value of the size of the array into s0 because we will lose it during the loop of scanning the array
     li $v0,4 #according to the system call table if we need to show messege on the run we need to set v0 to 4 and load the adress of the messege into a0       
     la $a0,EnterNumbers#load the addrees of line into a0
     syscall #shows messege asks user to enter the elements of the array
      #we will make for loop to scan the array elements and the counter will be t1 so we will intialize it with 0
     add $t1,$zero,$zero #set the value to zero #we will make for loop to scan the array elements and the counter will be t1 so we will intialize it with 0   
     la $t3 arr#load the addrees of the start of the array into t3
     For:
            slt $t2,$t1,$s0#compare our counter t1 with the size of the array s0
            beq $t2,$zero,Exit#if the counter is greater than or equal the size of the array then t2 will become 0 and we should exit the loop
            sll $t2,$t1,2 #multiply t1 with 4 to find the offset of the array
            #if we need to read an integer we need to set the value of v0 to 5 and the value will return into v0 according to the system call table
            li $v0,5#the step we have explained in the last line
            syscall#scan the element of the array
            add $t2,$t2,$t3#make t2 to new position off the array by adding the offset to the first position
            sw $v0,0($t2)#save the scanned element into its position in the array
            addi $t1,$t1,1#increase the counter by one to scan the next element
            j For #back to the start of the for loop to check our counter
     Exit:
     #we will start the loop of the minimization
     lw $s1,0($t3) #we will minimize in s1 and saves the first element of the array into it 
     la $t1,1 #we will set the value of our counter to 1 because we have saved the 0 element in $s1
     For1:
           slt $t2,$t1,$s0#compare our counter t1 with the size of the array s0
           beq $t2,$zero,Exit1#if the counter is greater than or equal the size of the array then t2 will become 0 and we should exit 
           sll $t2,$t1,2 #multiply t1 with 4 to find the offset of the array
           add $t2,$t2,$t3#make t2 to new position off the array by adding the offset to the first position
           lw  $s5,0($t2) #load the element of the array into s5
           slt $t2,$s5,$s1 #check if the current element which is saved into s5 is less than the minimum which is stored in s1 
           beq $t2,$zero,increament #if the cuurent element if bigger than the minimum go to the next element
           add $s1,$zero,$s5#here the current element is less than the minimum so we set the minimum to current value
           increament: addi $t1,$t1,1
           j For1
     Exit1:
      li $v0,4 #according to the system call table if we need to show messege on the run we need to set v0 to 4 and load the adress of the messege into a0
      la $a0,OutMini#load the addrees of line into a0
      syscall #shows messege that shows the minimum number
      li $v0,1#according to the system call table we need to make v0 equal 1 and a0 equal the nedded integer to print an integer
      add $a0,$zero,$s1 #save the value of the minimum number s1 to a0 to be printed
      syscall      
j out4#jumb instrc to return to the main call
conn4:#if the condition true means that (s7!=5) 
bne $s7,$t3,conn3#if(s7!=6)
main3:
li $v0, 4 #to print string
la $a0, msgD # to store the message addresse
syscall # to show the message 

li $v0,5 # to get integer input 
syscall
add $s0,$0,$v0 #save the value of the integer in s0
li $v0,5 #to get the second integer
syscall
add $s1, $0 ,$v0 #save the value of the second integer in s1

div $s2,$s0,$s1 #perform the division
li $v0, 4 #to print string
la $a0, msg2D # to store the message addresse
syscall # to show the message 
li $v0,1 # to print the integer
add $a0, $zero,$s2 
syscall
j out3#jumb instrc to return to the main call
conn3:#if the condition true means that (s7!=3) (s7==0) 
li $v0,10#to terminate the problem in that case if (s7==0) that will terminate
syscall
#the function Add
AddNum:
	add $v1,$s1,$s2 # add $s1,$s2 to $v1 
	jr $ra # Return to complete the code