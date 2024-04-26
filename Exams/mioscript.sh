MYVAR="Hello World"
echo $MYVAR
echo MyPID: $$, status: $?

find . -maxdepth 1 -type f -exec du -h {} \; >> log.txt