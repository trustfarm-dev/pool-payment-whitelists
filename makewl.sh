#!/bin/sh

gcc -o payment-whitelist -O3 -fPIC  -W -Wwrite-strings -g -ggdb   -I./hiredis  -I. -L./ payment-whitelist.c ../libhiredis.a
