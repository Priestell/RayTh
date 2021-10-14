//
// Created by ollguardner on 11/10/2021.
//
#include "Includes/game.h"
#include "Includes/Splashscreen.h"
#include "Includes/MainMenu.h"

void Game::start()
{
    if(_gamestate != Unintialized) {
        return;
    }
    _mainWindow.create(sf::VideoMode(1024,640,32), "RayaT");
    _gamestate = Game::showingSplash;

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
            case Game::showingMenu:
            {
                ShowMenu();
                break;
            }
            case Game::showingSplash:
            {
                ShowSplashScreen();
                break;
            }
            case Game::playing:
            {
                sf::Event currentEvent;
                while(_mainWindow.pollEvent(currentEvent))
                {
                    _mainWindow.clear(sf::Color(0,0,0));
                    _mainWindow.display();
                }

                if(currentEvent.type == sf::Event::Closed)
                {
                    _gamestate = Game::existing;
                }
                if(currentEvent.type == sf::Event::KeyPressed)
                {
                    if(currentEvent.key.code == sf::Keyboard::Escape)
                    {
                        ShowMenu();
                    }
                }
                break;
            }

            }
        }
    }

void Game::ShowSplashScreen()
{
    Splashscreen splashscreen;
    splashscreen.Show(_mainWindow);
    _gamestate = Game::showingMenu;
}
void Game::ShowMenu()
{
    MainMenu mainMenu;
    MainMenu::MenuResult result = mainMenu.Show(_mainWindow);
    switch(result)
    {
        case MainMenu::Exit:
            _gamestate = Game::existing;
            break;
        case MainMenu::Play:
            _gamestate = Game::playing;
            break;
    }
}
Game::GameState Game::_gamestate = Unintialized;
sf::RenderWindow Game::_mainWindow;