//
//  Variation.swift
//  PLACC
//
//  Created by Klaudia Madhi on 10.11.21.
//

import Foundation

struct Variation: Codable, Identifiable, Hashable {
    var id: String {
        title
    }
    let title: String
    let variationType: VariationType
    let solution: String
}
