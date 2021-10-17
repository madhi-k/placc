//
//  Behaviour.swift
//  PLACC
//
//  Created by Klaudia Madhi on 17.10.21.
//

import Foundation

struct Behaviour: Codable, Identifiable, Hashable {
    var id: String {
        title
    }
    let title: String
    let imageName: String
    let variations: [Variation]
    
}

enum VariationType: Codable, Hashable {
    
    enum CodingKeys: CodingKey {
        case questionnaireData
        case openQuestionsData
    }
    
    enum QuestionnaireKeys: CodingKey {
        case attributions
        case personas
    }
    
    case questionnaireData(attributions: String, personas: [String])
    case openQuestionsData(attributions: String)
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .questionnaireData(let attributions, let personas):
            var questionnaireContainer = container.nestedContainer(keyedBy: QuestionnaireKeys.self, forKey: .questionnaireData)
            try questionnaireContainer.encode(attributions, forKey: .attributions)
            try questionnaireContainer.encode(personas, forKey: .personas)
        case .openQuestionsData(let attributions):
            try container.encode(attributions, forKey: .openQuestionsData)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let key = container.allKeys.first
        
        switch key {
        case .questionnaireData:
            let questionnaireContainer = try container.nestedContainer(keyedBy: QuestionnaireKeys.self, forKey: .questionnaireData)
            self = .questionnaireData(attributions: try questionnaireContainer.decode(String.self, forKey: .attributions), personas: try questionnaireContainer.decode([String].self, forKey: .personas))
        case .openQuestionsData:
            self = .openQuestionsData(attributions: try container.decode(String.self, forKey: .openQuestionsData))
        default: fatalError()
        }
    }
}

struct Variation: Codable, Identifiable, Hashable {
    var id: String {
        title
    }
    let title: String
    let variationType: VariationType
    let solution: String
}
