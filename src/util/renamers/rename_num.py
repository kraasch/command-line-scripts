#!/usr/bin/python3

import sys
import os
import pathlib
import string
import random

if not len(sys.argv) == 2:
    print('provide a directory')
    exit()

def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

dir=sys.argv[1]
prefix=id_generator()

def rename_all(prefix=''):
    index=0
    for file in sorted(pathlib.Path(dir).iterdir()):
        index = index + 1
        suffix = pathlib.Path(file).suffix
        new_name=dir+'/'+prefix+str(index).zfill(3)+str(suffix)
        if not os.path.exists(new_name):
            os.rename(file, new_name)
        else:
            print(f'Error: duplicate name at index {index}.')
            break

rename_all(prefix + '_')
rename_all()
