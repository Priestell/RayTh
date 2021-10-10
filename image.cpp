//
// Created by ollguardner on 10/10/2021.
//

#import <SFML/Graphics.hpp>
#import <iostream>

using namespace std;
using namespace sf;
Sprite AfficherSprite(string nomTexture)
{
    Texture Texture;
    Sprite sprite;
    if(!Texture.loadFromFile(nomTexture))
    {
        cout << "Erreur durant le chargement de la Texture " << endl;
    }
    else
    {
     sprite.setTexture(Texture);
     return sprite;
    }
}