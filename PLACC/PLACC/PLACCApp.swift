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
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Alata-Regular", size: 14)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Alata-Regular", size: 14)!], for: .selected)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
