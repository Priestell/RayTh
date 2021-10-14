//
// Created by ollguardner on 14/10/2021.
//
#include "Includes/Splashscreen.h"

void Splashscreen::Show(sf::RenderWindow &window)
{
    sf::Texture texture;
    if(!texture.loadFromFile("../ressources/SplashScreen.png"))
    {
        return;
    }
    sf::Sprite sprite(texture);
    window.draw(sprite);
    window.display();
    sf::Event event;
    while(true)
    {
        while (window.pollEvent(event))
        {
            if(event.type == sf::Event::EventType::KeyPressed
            || event.type == sf::Event::EventType::MouseButtonPressed
            || event.type == sf::Event::EventType::Closed)
            {
                return;
            }
        }
    }
}