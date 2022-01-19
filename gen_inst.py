import peachpy.x86_64
import sys # for stdout buffer

def _get(name):
    try:
        return getattr(peachpy.x86_64, name)
    except:
        return int(name)

def get_inst_and_args(instruction):
    # "mov rdi, 0x13" -> "mov", ("0x13",)
    instruction = instruction.strip()
    tmp = instruction.split(' ')
    inst = tmp[0]
    args = tuple(map(_get, ' '.join(tmp[1:]).split(',')))
    return str.upper(inst), args

if __name__ == '__main__':
    if len(sys.argv) <= 1:
        print('Usage: python3 gen_inst.py [inst 1] ! [inst 2] ! ... ! [inst n]')
    else:
        instructions = list(map(lambda x: x.strip(), ' '.join(sys.argv[1:]).split('!')))
        
        encoded = bytearray()
        for i in instructions:
            inst, args = get_inst_and_args(i)
            op_bytes = _get(inst)(*args).encode()
            encoded.extend(op_bytes)

        sys.stdout.buffer.write(encoded)
