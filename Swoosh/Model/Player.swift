//
//  Player.swift
//  Swoosh
//
//  Created by Jeremy Clerico on 04/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import Foundation

//Use struct whenever you can - when using default swap types, strings etc. Structs are value types and can be copied over directly. Structs are much faster than classes.
//Use a class when you have to do custom implementation. Classes are an object stored in memory and you cant copy it
struct Player {
    var desiredLeague: String?
    var selectedSkillLevel: String?
}
