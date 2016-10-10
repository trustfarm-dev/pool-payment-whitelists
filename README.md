# pool-payment-whitelists
open-ethereum-pool backend payment whitelists using hiredis c client library

This sw is for whitelisting the payments when using open-ethereum-pool (https://github.com/sammy007/open-ethereum-pool).

# Usage 

./payment-whitelist [-h host -p port] -d [redis db number] [-a "redis-key-xxxxx"]

before payout execution.

# Build with hiredis (https://github.com/redis/hiredis) C Client library
./makewl.sh

#!/bin/sh

gcc -o payment-whitelist -O3 -fPIC  -W -Wwrite-strings -g -ggdb   -I../  -I. -L../ payment-whitelist.c ../libhiredis.a

# Adds whitelist

payment-whitelist.c , following array to your wanting.
limit is defined in C , and build

const char *g_whitelist[] = { 
    "0x068ac88c5a50f574919d48d0fexxxxxxxxxxxxxx",
    "0xxxxxxxxxxxxxxxxx85acbd99ffc287999b09b669",
    "0x8df9f63bddd6918xxxxxxxxxxxxxxxxxxxxb1793",
    NULL
};

# Future release
1. independent whitelist db adds to redis.
2. support text list file supports
