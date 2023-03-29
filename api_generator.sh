a=0
while [ "$a" -lt 2000 ]
do
    curl -X POST -d 'json={"json":"message"}' http://127.0.0.1:9880/sample.test
    a=$(expr $a + 1)
    echo $a
done
