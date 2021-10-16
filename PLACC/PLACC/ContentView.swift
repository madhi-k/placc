//
//  ContentView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BehavioursView()
                .tabItem {
                    Image(systemName: "tornado")
                    Text("Behaviours")
                }
            PersonasView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Personas")
                }
            PersonasView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Young PL's manual")
                }
            PersonasView()
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("How to use")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
