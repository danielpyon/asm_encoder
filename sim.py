from unicorn import *
from unicorn.x86_const import *
import sys

X86_CODE64 = b'\x48\xc7\xc7\x37\x13\x00\x00\x48\xc7\xc0\x01\x00\x00\x00\x0f\x05'
ADDRESS = 0x1000000

try:
    if len(sys.argv) > 1:
        X86_CODE64 = sys.argv[1]

    mu = Uc(UC_ARCH_X86, UC_MODE_64)
    mu.mem_map(ADDRESS, 2 * 1024 * 1024)
    mu.mem_write(ADDRESS, X86_CODE64)

    mu.emu_start(ADDRESS, ADDRESS + len(X86_CODE64))
    print('Emulation done. Below is CPU context.')

    print(mu.reg_read(UC_X86_REG_RDI))

except UcError as e:
    print(f'Error: {e}')
