//
//  SolarSystem.swift
//  Quiz
//
//  Created by Julián Romero on 08/03/16.
//  Copyright © 2016 wuonm. All rights reserved.
//

import Foundation

let solarSystem = [
    Subject(name: "asteroids", definition: "Relatively small celestial bodies that move around the sun mainly between the orbits of Mars and Jupiter."),
    Subject(name: "celestial object", definition: "An object existing beyond earth's atmosphere."),
    Subject(name: "comets", definition: "A celestial body moving about the sun, usually in a oval-shaped orbit, consisting of a central mass surrounded by an envelope of dust and gas that may form a tail that streams away from the sun."),
    Subject(name: "galaxy", definition: "A group of stars, gas and dust held together by gravity."),
    Subject(name: "planets", definition: "A relatively large object moving around a star."),
    Subject(name: "satellites", definition: "A smaller object orbiting a larger one. There are many of these electronic objects that orbit the Earth."),
    Subject(name: "star", definition: "A self-luminous object that shines through the release of energy produced by nuclear reactions at its core."),
    Subject(name: "distance", definition: "The extent or amount of space between two things in the universe."),
    Subject(name: "force", definition: "Strength or power exerted upon an object. The amount of push or pull on an object."),
    Subject(name: "gravity", definition: "The force of attraction between particles or bodies that occurs because of their mass. It is stronger as mass is increased, and is weaker as the distance between the objects is increased."),
    Subject(name: "gravitational force", definition: "The amount of gravitational pull exerted on an object."),
    Subject(name: "mass", definition: "The quantity of matter in something (the amount of atoms, molecules, etc. in something)."),
    Subject(name: "Weight", definition: "The force on a mass due to gravity"),
    Subject(name: "solar system", definition: "The system of planets and other objects orbiting the star Sol, which happens to be our Sun."),
    Subject(name: "constellation", definition: "A grouping of stars which have been given names by ancient astronomers because of the way they look."),
    Subject(name: "Milky Way Galaxy", definition: "Our Galaxy. (The word 'Galaxy' actually means milky way in Greek)."),
    Subject(name: "speed of light", definition: "186,000 miles a second or 700 million miles an hour."),
    Subject(name: "telescope", definition: "An optical instrument for making distant objects appear larger and therefore nearer."),
    Subject(name: "universe", definition: "All of the known or supposed objects and phenomena throughout space."),
    Subject(name: "sun", definition: "The star that is the central body of the solar system, around which the planets revolve and from which they receive light and heat."),
    Subject(name: "light years", definition: "The distance light can travel in a year. This is one of the basic measures of distance for astronomy.")
]
let solarSystemQuiz = Quiz(subjects: solarSystem)
