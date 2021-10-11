//
// Created by ollguardner on 11/10/2021.
//
#include "Includes/game.h"

void Game::start()
{
    if(_gamestate != Unintialized) {
        return;
    }
    _mainWindow.create(sf::VideoMode(1024,768,32), "RayaT");
    _gamestate = Game::playing;

    while(!isExisting())
    {
        gameLoop();
    }
    _mainWindow.close();
}

bool Game::isExisting() {
    if(_gamestate == Game::existing)
        return true;
    else
        return false;
}

void Game::gameLoop()
{
    sf::Event currentEvent;
    while(_mainWindow.pollEvent(currentEvent))
    {
        switch(_gamestate)
        {
            case Game::playing:
            {
                _mainWindow.clear(sf::Color::Black);
                _mainWindow.display();

                if(currentEvent.type == sf::Event::Closed)
                {
                    _gamestate = Game::existing;
                }
                break;
            }
        }
    }
}

Game::GameState Game::_gamestate = Unintialized;
sf::RenderWindow Game::_mainWindow;