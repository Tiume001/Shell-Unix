#!/bin/bash

# Dichiarazione della casella di posta
declare -A mailbox
declare -a chat_history

# Funzione per inviare un'email
send_email() {
    local to=$1
    local subject=$2
    local message=$3
    echo "Invio email a: $to"
    echo "Oggetto: $subject"
    echo "Messaggio: $message"
    # Salva l'email nella casella di posta
    if [[ -n ${mailbox[$to]} ]]; then
        mailbox[$to]+="\nDa: $USER\nOggetto: $subject\n$message\n"
    else
        mailbox[$to]="Da: $USER\nOggetto: $subject\n$message\n"
    fi
}

# Funzione per controllare la casella di posta
check_mail() {
    local user=$1
    echo "Controllo della casella di posta per: $user"
    if [[ -n ${mailbox[$user]} ]]; then
        echo "Hai nuovi messaggi:"
        echo -e "${mailbox[$user]}"
    else
        echo "Nessun nuovo messaggio."
    fi
}

# Funzione per avviare una chat
start_chat() {
    local recipient=$1
    echo "Inizio chat con: $recipient"
    local chat_log=""
    while true; do
        read -p "Tu: " message
        if [[ "$message" == "exit" ]]; then
            break
        fi
        #echo "Tu: $message"
        chat_log+="Tu: $message"$'\n'
        read -p "$recipient: " message
        if [[ "$message" == "exit" ]]; then
            break
        fi
       # echo "$recipient: $message"
        chat_log+="$recipient: $message"$'\n'
    done
    chat_history+=("$chat_log")
}

# Funzione per visualizzare le chat aperte
view_chats() {
    if [[ ${#chat_history[@]} -eq 0 ]]; then
        echo "Nessuna chat aperta."
    else
        echo "Chat aperte:"
        for ((i=0; i<${#chat_history[@]}; i++)); do
            echo "Chat $((i+1)):"
            echo "${chat_history[$i]}"
        done
    fi
}

# Menu principale
while true; do
    echo "Benvenuto nel nostro server di posta."
    echo "Cosa vuoi fare?"
    echo "1. Invia un'email"
    echo "2. Controlla la casella di posta"
    echo "3. Inizia una chat"
    echo "4. Visualizza le chat aperte"
    echo "5. Esci"

    read -p "Scelta: " choice

    case $choice in
        1)
            read -p "Destinatario: " recipient
            read -p "Oggetto: " subject
            read -p "Messaggio: " message
            send_email "$recipient" "$subject" "$message"
            ;;
        2)
            read -p "Nome utente: " user
            check_mail "$user"
            ;;
        3)
            read -p "Destinatario: " recipient
            start_chat "$recipient"
            ;;
        4)
            view_chats
            ;;
        5)
            echo "Arrivederci!"
            exit 0
            ;;
        *)
            echo "Scelta non valida. Riprova."
            ;;
    esac
done
