# $1: name of assembly file
# $2: name of binary

gcc -o $2 -nostdlib -static $1
objcopy -O binary -j .text $2 out
od -An -t x1 out

