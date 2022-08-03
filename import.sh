
#!/bin/bash
dynamic_array=()

TOKEN=5534234005:AAG-KONvoXzbxCpS4YCZG8PI7nbuT57_-0c
CHAT_ID="-766332157"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"


for (( i =1 ; i<=10 ; i++)){
    
    store_digit=$(shuf -i0-9 -n1) ;
    dynamic_array+=("$store_digit")
}
str_array_value="${dynamic_array[*]}" ;
echo "Sending OTP"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="OTP = ${str_array_value// /}" > /dev/null && continue

