from peachpy.x86_64 import *
import sys # for stdout buffer

if __name__ == '__main__':
    if len(sys.argv) <= 1:
        print('Usage: python3 gen_inst.py [inst 1] ! [inst 2] ! [inst n]')
    else:
        instructions = list(map(lambda x: x.strip(), ' '.join(sys.argv[1:]).split('!')))

        print(instructions)


    # sys.stdout.buffer.write(bytes.fromhex('deadbeef'))
