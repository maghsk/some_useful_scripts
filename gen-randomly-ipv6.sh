#Random generator ipv6 addresses within your ipv6 network prefix.
#!/usr/local/bin/bash

# Copyright
# Vladislav V. Prodan
# universite@ukr.net
# 2011


array=( 1 2 3 4 5 6 7 8 9 0 a b c d e f )
MAXCOUNT=20
count=1
network=2001:470:26:307 # your ipv6 network prefix

rnd_ip_block ()
{
    a=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    b=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    c=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    d=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    echo $network:$a:$b:$c:$d
}

echo "$MAXCOUNT 随机的 IPv6:"
echo "-----------------"
while [ "$count" -le $MAXCOUNT ]        # 产生 20 ($MAXCOUNT) 个随机数。
do
        rnd_ip_block
        let "count += 1"                # 建立随机数。
        done
echo "-----------------"
