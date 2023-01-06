////  ContentView.swift
//  Zookeeper
//
//  Created by Patricia Carlos on 06/01/23.
//  
//

import SwiftUI

struct ContentView: View
{
    @State var animals = [
        Animal(
            name: "Dog"
        ), Animal(
            name: "Cat"
        ), Animal(
            name: "Parrot"
        )
    ]
    var body: some View
    {
        VStack
        {
            List(
                animals
            ) { animal in
                Text(
                    animal.name
                )
            }
            Button(
                "Add"
            ) {
                animals.append(
                    Animal(
                        name: "New Animal"
                    )
                )
            }
        }
    }
}
struct Animal: Identifiable
{
    var id = UUID()
    var name: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
