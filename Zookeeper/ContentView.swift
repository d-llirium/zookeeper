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
       VStack
        {
           Text("I ❤️ List").font(.headline)
           List {
               Text("Item 1")
               Text("Item 2")
               Text("Item 3")
           }
           .listStyle(InsetGroupedListStyle()
           )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
