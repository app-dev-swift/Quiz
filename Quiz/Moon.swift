//
//  Moon.swift
//  Quiz
//
//  Created by Julián Romero on 08/03/16.
//  Copyright © 2016 wuonm. All rights reserved.
//

import Foundation

let moon = [
    Subject(name: "moon", definition: "An object in space that moves around Earth and reflects sunlight."),
    Subject(name: "crater", definition: "A hole in the surface of a moon or planet formed by the impact of a space object."),
    Subject(name: "lunar eclipse", definition: "The act of the moon passing into Earth's shadow."),
    Subject(name: "moon phases", definition: "The way the moon looks at certain times."),
    Subject(name: "new moon", definition: "The phase of the moon in which its dark side faces Earth."),
    Subject(name: "full moon", definition: "The phase of the moon in which its whole disk is reflecting sun."),
    Subject(name: "waxing", definition: "Moon phases from new moon to full moon, as the lit surface seen from Earth grows larger."),
    Subject(name: "waning", definition: "Moon phases from full moon to new moon, as the lit surface seen from Earth grows smaller."),
    Subject(name: "shadow", definition: "A black spot that forms when an object blocks light."),
    Subject(name: "solar eclipse", definition: "The act of the moon casting a shadow onto Earth's surface.")
]

let moonQuiz = Quiz(subjects: moon)