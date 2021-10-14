//
// Created by ollguardner on 14/10/2021.
//
#include "Includes/MainMenu.h"
MainMenu::MenuResult MainMenu::Show(sf::RenderWindow &window)
{
    // On load le menu
    sf::Texture texture;
    texture.loadFromFile("../ressources/MainMenu.png");
    sf::Sprite sprite(texture);

    //Setup clickable regions
    MenuItem exitButton;
    exitButton.rect.left = 90;
    exitButton.rect.top = 300;
    exitButton.rect.height = 100;
    exitButton.rect.width = 386;
    exitButton.action = Exit;

    _menuItems.push_back(exitButton);
    window.draw(sprite);
    window.display();
    return GetMenuResponse(window);

}

MainMenu::MenuResult MainMenu::HandleClick(int x, int y)
{
    std::list<MenuItem>::iterator it;

    for(it = _menuItems.begin(); it != _menuItems.end(); it++)
    {
        sf::Rect<int> menuItemRect = (*it).rect;
        if(menuItemRect.contains(x,y))
        {
            return(*it).action;
        }

    }
    return Nothing;
}

MainMenu::MenuResult MainMenu::GetMenuResponse(sf::RenderWindow &window) {
    sf::Event menuEvent;
    while(42!=43)
    {
        while(window.pollEvent(menuEvent))
        {
            if(menuEvent.type == sf::Event::MouseButtonPressed)
            {
                return HandleClick(menuEvent.mouseButton.x, menuEvent.mouseButton.y);
            }
        }if(menuEvent.type == sf::Event::Closed)
        {
            return Exit;
        }
    }
}