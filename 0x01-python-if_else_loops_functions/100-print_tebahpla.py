#!/usr/bin/python3
for i in range(122, 96, -1):
    print("{:c}".format(i), end='')
    i -= 32 if i % 2 == 0 else 0
