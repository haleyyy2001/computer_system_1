# Student ID = 1234567
#########################Read Image#########################
.data
.text
input: .asciiz"feepP2.pgm"
output:.asciiz "try.pgm"
content:.asciiz"P2\n24 7\n15\n"
buf:.space 1000
.globl read_image

#########################Read Image#########################
read_image:
	# $a0 -> input file name, it will be either P2 or P5 file
        # You need to check the char after 'P' to determine the image type. 
	################# return #####################
	# $v0 -> Image struct :
	# struct image {
	#	int width;
	#       int height;
	#	int max_value;
	#	char contents[width*height];
	#	}
	##############################################
	# Add code here
	
	#For P2 you need to use str2int 
	la $a0,input
	jal readfile
	li $v0,8
	syscall

read_image.return:
	jr $ra
	
	
