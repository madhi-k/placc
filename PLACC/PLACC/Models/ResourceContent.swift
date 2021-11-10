//
//  ResourceContent.swift
//  PLACC
//
//  Created by Klaudia Madhi on 10.11.21.
//

import Foundation

protocol ResourceContent: Codable {}

extension ResourceContent {
    static var content: [Self] {
        guard let fileURL = Bundle.main.url(forResource: String(describing: Self.self).lowercased() + "s", withExtension: "json"),
              let content = try? JSONDecoder().decode([Self].self, from: Data(contentsOf: fileURL)) else {
                  return []
              }
        return content
    }
    
}
