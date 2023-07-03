currentDir=$(dirname "$0")
textFile="myToken.txt"
textFilePath="${currentDir}/${textFile}"

token=$(cat $textFilePath)

echo url="https://www.duckdns.org/update?domains=njoppi2&token=$token&ip=" | curl -k -o "${currentDir}/duck.log" -K -
