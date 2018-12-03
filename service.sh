#!/bin/bash
COMMON_PASS="om"
echo -e "\n Extracted ip address and Now ssh to each machine \n"
for i in `cat machines_list.txt`
do
  echo "Logging into machine: $i"
  expect -c "
  spawn ssh -t username@$i sudo systemctl restart foobar
  expect "*password:"
  send \"$COMMON_PASS\r\"
  interact
  "
  echo -e "\ entered ssh credentials \n"
done
