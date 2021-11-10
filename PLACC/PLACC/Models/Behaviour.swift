//
//  Behaviour.swift
//  PLACC
//
//  Created by Klaudia Madhi on 17.10.21.
//

import Foundation

struct Behaviour: ResourceContent, Identifiable, Hashable {
    var id: String {
        title
    }
    let title: String
    let imageName: String
    let variations: [Variation]
    
}
