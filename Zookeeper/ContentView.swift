////  ContentView.swift
//  Zookeeper
//
//  Created by Patricia Carlos on 06/01/23.
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        List(
            animals,
            id: \.uniqueID
        ) { animal in
            Text(
                animal.name
            )
        }
    }
}
struct Animal {
    var uniqueID : Int
    var name: String
}
let animals = [
    Animal(
        uniqueID: 0,
        name: "Dog"
    ),
    Animal(
        uniqueID: 1,
        name: "Cat"
    ),
    Animal(
        uniqueID: 2,
        name: "Parrot"
    )
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
