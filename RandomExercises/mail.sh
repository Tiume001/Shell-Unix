#!/bin/bash

# Inizializza le variabili
CLIENT_SECRET_FILE="client_secret.json"
ACCESS_TOKEN_FILE="access_token.json"
SCOPE="https://mail.google.com/"
REDIRECT_URI="urn:ietf:wg:oauth:2.0:oob"
AUTH_URL="https://accounts.google.com/o/oauth2/auth"
TOKEN_URL="https://accounts.google.com/o/oauth2/token"
SENDMAIL="/usr/sbin/sendmail"

# Estrai il client ID dal file client_secret.json
CLIENT_ID=$(jq -r '.web.client_id' "$CLIENT_SECRET_FILE")

# Funzione per ottenere l'access token
get_access_token() {
    printf "Apri il seguente URL nel tuo browser e segui le istruzioni:\n"
    printf "%s?scope=%s&redirect_uri=%s&response_type=code&client_id=%s\n" "$AUTH_URL" "$SCOPE" "$REDIRECT_URI" "$CLIENT_ID"
    printf "Inserisci il codice di autorizzazione: "
    read -r CODE

    CLIENT_SECRET=$(jq -r '.web.client_secret' "$CLIENT_SECRET_FILE")

    curl -s -X POST "$TOKEN_URL" -d "client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&code=$CODE&grant_type=authorization_code&redirect_uri=$REDIRECT_URI" > "$ACCESS_TOKEN_FILE"
    # shellcheck disable=SC2034
    ACCESS_TOKEN=$(jq -r '.access_token' "$ACCESS_TOKEN_FILE")
}

# Controlla se il token è scaduto
check_token_validity() {
    # shellcheck disable=SC2034
    EXPIRATION=$(jq -r '.expires_in' "$ACCESS_TOKEN_FILE")
    EXPIRATION_TIME=$(jq -r '.expiration_time' "$ACCESS_TOKEN_FILE")

    if [[ $(date +%s) -gt "$EXPIRATION_TIME" ]]; then
        get_access_token
    fi
}

# Invia l'email
send_email() {
    local to="$1"
    local subject="$2"
    local message="$3"

    # shellcheck disable=SC2155
    local email=$(cat <<EOF
From: $SENDER
To: $to
Subject: $subject

$message
EOF
)

    echo "$email" | "$SENDMAIL" -t
}

# Verifica se esiste il file del token, altrimenti ottiene un nuovo token
if [[ ! -f "$ACCESS_TOKEN_FILE" ]]; then
    get_access_token
fi

# Controlla se il token è valido
check_token_validity

# Email mittente
SENDER="tiume00@gmail.com"

# Indirizzo email del destinatario
recipient="scarpa2123@gmail.com"

# Oggetto dell'email
subject="Oggetto dell'email"

# Messaggio dell'email
message="Questo è un messaggio di test."

# Invia l'email
send_email "$recipient" "$subject" "$message"
