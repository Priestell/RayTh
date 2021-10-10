//
// Created by ollguardner on 09/10/2021.
//
#include <iostream>
#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>
using namespace sf;
using namespace std;
Sprite AfficherSprite(String nomTexture)
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
        FloatRect spriteSize=sprite.getGlobalBounds();
        sprite.setOrigin(0,0);
    }
    return sprite;
}

int main()
{
    // Fenêtre de rendu
    RenderWindow app(VideoMode(600, 600, 32), "Mon superbe polygone SFML !");



    // Boucle principale
    while (app.isOpen())
    {
        Event event;
        while (app.pollEvent(event))
        {
            // Fenêtre fermée : on quitte
            if (event.type == Event::Closed)
                app.close();
        }

        // Efface l'écran (remplissage avec du noir)
        app.clear();

        // Affichage de notre carre dans la fenêtre

        // Affichage du contenu de la fenêtre à l'écran
        app.display();
        Sprite zozor;
        zozor = AfficherSprite("Zozor");
        app.draw(zozor);
    }

    return EXIT_SUCCESS;
}
