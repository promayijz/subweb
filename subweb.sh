#! /bin/sh 
echo "-----------------------------------Start-------------------------------------"
filename="/root/subweb/api/aff.py"
cat>"${filename}"<<EOF
#apiip = '$1'
subip = '$1'               
EOF
cat /root/subweb/api/aff.py
#chmod 777 /root/subweb/config/subconverter

netstat -tupln | egrep '10010|10086'

if [ $? ! -eq 0 ]; then
    ./stop_subweb.sh
else
    cd /root/subweb/config
    ./subconverter &
fi

