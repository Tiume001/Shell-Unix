#stampa "CIAO" : 
echo CIAO 

#stampa i primi 100 numeri facendo i = i + 2 : 
i=1
while [ $i -le 100 ]
do
echo $i
((i = $i + 2))
done

#prende input da tastiera e stampa "Benvenuto -name-" : 
read name
echo Benvenuto $name

#stampare i primi n numeri con un ciclo seq da num1 a num2 (2 interi)
seq num1 num2

#prende in input 2 interi e stampa : la loro somma, differenza, prodotto e divisione
read n1   #potrei anche mettere read n1 n2 e scrivere i due numeri sulla stessa linea divisi da uno spazio
read n2
echo $[n1 + n2]
echo $[n1 - n2]
echo $[n1 * n2]
echo $[n1 / n2]

#prende 2 interi come input e stampa se il primo numero è maggiore / minore / uguale al secondo 
read x
read y
if (($x > $y))
then
echo $x is greater than $y
elif (($x < $y))
then
echo $x is less than $y
else
echo $x is equal to $y
fi
