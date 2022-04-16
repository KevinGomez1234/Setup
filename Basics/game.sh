#!/bin/sh
game () {
    read -p "Guess the number: " number
    if [ $number -eq 42 ] || [ $number -eq 23 ]; then
        echo you have won
    else
        echo you have lost the game
    fi 
}

authorization () {
    ad=admin
    read -p "Enter your username: " username;
    read -p "Enter your password: " password;
    echo $username
    if [ $username = 'admin' ] && [ $password = 'admin' ]; then
        echo good credentials, lets play a game!
    else
        echo Your answers were incorrect!
        exit 0
    fi
}

authorization;
game;
