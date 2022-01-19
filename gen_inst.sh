# $1: name of assembly file

if [[ $# -eq 0 ]] ; then
    echo 'Please supply the name of the assembly file'
    exit 0
fi

gcc -nostdlib -static $1
objcopy -O binary -j .text a.out out
od -An -t x1 out | python3 raw.py

rm out
rm a.out
