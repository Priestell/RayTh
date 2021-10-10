#!/bin/bash
chmod +x comp.sh
g++ -c main.cpp -I</home/ollguardner/Documents/SFML>/include | g++ main.o -o sfml-app -L</home/ollguardner/Documents/SFML>/lib -lsfml-graphics -lsfml-window -lsfml-system | ./sfml-app
