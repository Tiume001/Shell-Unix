#!/bin/bash
# program to simulate the shell
# Funzione per l'esecuzione dei comandi
run_command() {
    # Esegui il comando
    "$@"
}

# Loop principale
while true; do
    # Stampare il prompt
    echo -n "$ "

    # Leggi l'input dall'utente
    read -r command

    # Controlla se l'utente vuole uscire
    if [ "$command" == "exit" ]; then
        break
    fi

    # Esegui il comando
    run_command $command
done
