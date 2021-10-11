//
// Created by ollguardner on 11/10/2021.
//
#pragma once
#ifndef RAYAT_GAME_H
#define RAYAT_GAME_H
#include <SFML/Graphics.hpp>

class Game
{
public:
    static void start();

private:
    static bool isExisting();
    static void gameLoop();


    enum GameState{Unintialized, showingSplash, Paused, showingMenu, playing,
            existing };

    static GameState _gamestate;
    static sf::RenderWindow _mainWindow;
};









#endif //RAYAT_GAME_H
