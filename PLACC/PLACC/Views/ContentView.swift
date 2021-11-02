//
//  ContentView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex: Int
    
    var body: some View {
        TabView(selection: self.$selectedIndex) {
            BehavioursView()
                .tabItem {
                    Image(systemName: "tornado")
                    Text("Behaviours")
                }
                .tag(0)
            PersonasView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Personas")
                }
                .tag(1)
            YoungPLManualView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Young PL's manual")
                }
                .tag(2)
            PLACCGuideView()
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("PLACC guide")
                }
                .tag(3)
        }
    }
}
