from peachpy.x86_64 import *
import sys # for stdout buffer

if __name__ == '__main__':
    sys.stdout.buffer.write(bytes.fromhex('deadbeef'))
