//
//  PLACCApp.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

@main
struct PLACCApp: App {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: UIFont(name: "Alata-Regular", size: 40)!]
        UINavigationBar.appearance().titleTextAttributes = [.font: UIFont(name: "Alata-Regular", size: 22)!]
        UITabBar.appearance().backgroundColor = .white
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Alata-Regular", size: 14)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Alata-Regular", size: 14)!], for: .selected)
        Utils.write(path: "/Users/klaudiamadhi/Desktop/behaviours.json")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
