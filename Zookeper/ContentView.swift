//
//  ContentView.swift
//  Zookeper
//
//  Created by Ricardo Omar Martinez Nava on 17/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("List of animals 🐊").foregroundColor(.white)
        List {ForEach(animalGroups) { animalGroup in
            Section(header: Text(animalGroup.groupName).foregroundColor(Color.teal)) {
                ForEach(animalGroup.animals) { animal in
                        Text(animal.name)
                        }
                    }
                }
            }
        }.background(Color.teal)
    }
}

struct Animal: Identifiable {
    var id = UUID()
    var name: String
}

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var animals: [Animal]
}

let animalGroups = [
    AnimalGroup(groupName: "Pets", animals:[
        Animal(name: "Dog 🐶"),
        Animal(name: "Cat 🐱"),
        Animal(name: "Parrot 🦜"),
        Animal(name: "Mouse 🐹"),
    ]),
    AnimalGroup(groupName: "Farm", animals:[
        Animal(name: "Cow 🐮"),
        Animal(name: "Horse 🐴"),
        Animal(name: "Goat 🐐"),
        Animal(name: "Sheep 🐏"),
    ]),
    AnimalGroup(groupName: "Critters", animals:[
        Animal(name: "Firefly 🪰"),
        Animal(name: "Spider 🕷️"),
        Animal(name: "Ant 🐜"),
        Animal(name: "Squirrel 🐿️"),
    ]),
    AnimalGroup(groupName: "Aquatic", animals:[
        Animal(name: "Shark 🦈"),
        Animal(name: "Dolphin 🐬"),
        Animal(name: "Fish 🐠"),
    ]),
]




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
