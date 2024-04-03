#echo $(whoami) # prints the name of the curren "runner" of the code/script

#!/bin/bash

# Funzione per stampare la scacchiera
print_board() {
    clear
    echo " ${board[1]} | ${board[2]} | ${board[3]} "
    echo "---+---+---"
    echo " ${board[4]} | ${board[5]} | ${board[6]} "
    echo "---+---+---"
    echo " ${board[7]} | ${board[8]} | ${board[9]} "
}

# Funzione per controllare se c'è una vittoria
check_win() {
    local win=false
    # Controllo righe
    for ((i=1; i<=7; i+=3)); do
        if [[ ${board[$i]} == ${board[$((i+1))]} && ${board[$i]} == ${board[$((i+2))]} && ${board[$i]} != " " ]]; then
            win=true
        fi
    done
    # Controllo colonne
    for ((i=1; i<=3; i++)); do
        if [[ ${board[$i]} == ${board[$((i+3))]} && ${board[$i]} == ${board[$((i+6))]} && ${board[$i]} != " " ]]; then
            win=true
        fi
    done
    # Controllo diagonali
    if [[ ${board[1]} == ${board[5]} && ${board[1]} == ${board[9]} && ${board[1]} != " " ]]; then
        win=true
    elif [[ ${board[3]} == ${board[5]} && ${board[3]} == ${board[7]} && ${board[3]} != " " ]]; then
        win=true
    fi
    echo $win
}

# Inizializzazione della scacchiera
board=(" " " " " " " " " " " " " " " " " ")

# Funzione per il turno del giocatore
player_turn() {
    local symbol=$1
    local valid=false
    while ! $valid; do
        read -p "Inserisci la posizione (1-9): " position
        if [[ $position =~ ^[1-9]$ ]]; then
            if [[ ${board[$position]} == " " ]]; then
                board[$position]=$symbol
                valid=true
            else
                echo "La posizione è già occupata. Riprova."
            fi
        else
            echo "Mossa non valida. Riprova."
        fi
    done
}



# Funzione per il turno del computer
computer_turn() {
    local symbol=$1
    local valid=false
    while ! $valid; do
        position=$((RANDOM % 9 + 1))
        if [[ ${board[$position]} == " " ]]; then
            board[$position]=$symbol
            valid=true
        fi
    done
}

# Funzione per giocare il gioco
play_game() {
    local turn=0
    local player_symbol="X"
    local computer_symbol="O"
    while true; do
        print_board
        if ((turn % 2 == 0)); then
            player_turn $player_symbol
            if $(check_win); then
                print_board
                echo "Hai vinto!"
                break
            fi
        else
            computer_turn $computer_symbol
            if $(check_win); then
                print_board
                echo "Il computer ha vinto!"
                break
            fi
        fi
        ((turn++))
        if ((turn == 9)); then
            print_board
            echo "Pareggio!"
            break
        fi
    done
}

# Avvia il gioco
play_game

