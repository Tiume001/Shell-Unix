Questo codice C si connette a un server remoto utilizzando il protocollo TCP e invia una richiesta HTTP GET per ottenere una risposta dal server. Ecco come puoi utilizzare questo codice:

Compilazione del codice: Salva il codice in un file con estensione ".c", ad esempio "client.c". Assicurati di avere un compilatore C installato sul tuo sistema (come gcc su Linux). Quindi, utilizza il compilatore per compilare il codice sorgente in un eseguibile:
gcc -o client client.c

Esecuzione del programma: Dopo aver compilato il codice, esegui il programma:
bash ./client

Risultato: Il programma aprirà una connessione al server IP "157.138.7.88" sulla porta 80 (HTTP) e invierà una richiesta GET per la homepage del sito "www.unive.it". Riceverà quindi una risposta dal server e la stampa a schermo.
Assicurati di sostituire l'indirizzo IP e la porta con quelli del server che desideri contattare e l'URL con quello del sito web al quale vuoi inviare la richiesta HTTP.
