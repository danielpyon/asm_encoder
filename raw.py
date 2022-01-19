import fileinput
import sys
import re

def sanitize(x):
    pattern = re.compile(r'\s+')
    return re.sub(pattern, '', x.strip())

if __name__ == '__main__':
    with fileinput.input() as f_input:
        instructions = sanitize(' '.join([line for line in f_input]))
        
        encoded = bytes.fromhex(instructions)
        sys.stdout.buffer.write(encoded)

