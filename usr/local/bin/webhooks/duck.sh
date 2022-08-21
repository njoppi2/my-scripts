token=$(cat /usr/local/bin/webhooks/myToken.txt)

echo url="https://www.duckdns.org/update?domains=njoppi2&token=$token&ip=" | curl -k -o /usr/local/bin/webhooks/duck.log -K -
