//
//  Utils.swift
//  PLACC
//
//  Created by Klaudia Madhi on 17.10.21.
//

import Foundation


enum Utils {
    
    static let behaviours: [Behaviour] = [
        Behaviour(
            title: "Joining meeting via mobile phone",
            imageName: "mobile_user",
            variations: [
                Variation(
                    title: "Riding a bike, getting groceries at the supermarket",
                    variationType: .questionnaireData(attributions: "87,5% of PLs agree that they are actually not attentive and must schedule more time for the meetings \n 63,5% of PLs agree that this person might not be involved in the team spirit \n 87,5% agree that this person isn't particularly interested in getting the most out of the iPraktikum and the meeting \n 62,5%  would personally consider this quite unprofessional", personas: ["distraction", "off_target"]),
                    solution: "You should keep a close eye to this situation, as it might affect the team and the progress of the project. When in doubt, analyze their performance and listen to the rest of the team and their impression. Also, pay close attention to the explanations they are giving, or better say, if they are giving any at all."
                ),
                
                Variation(
                    title: "Being on a train, in nature",
                    variationType: .openQuestionsData(attributions: "It is justified for as long as it is not repeated very often. The biggest risks project leaders mention in such situations, is that the participation might be poorer and the internet connection less stable"),
                    solution: "Encourage the team to let at least the coach know in advance if they need to join with their mobile phone. Make sure to build a strong meeting management culture, so that the information and decisions of the meeting are not lost. "
                )
                
            ]
        ),
        Behaviour(
            title: "Lack of audible participation",
            imageName: "lack_of_audible",
            variations: [
                Variation(
                    title: "Mostly just listening during the meetings and being muted almost all the time",
                    variationType: .questionnaireData(attributions: "12,5% This person is probably not as experienced as the others \n12,5% I would assume they are doing something else in parallel \n82,5% They are just shy/introverted \n25% They consider the iPraktikum the typical uni lecture and are just there to not absent \n25% They are likely facing impediments with their tasks/ struggling with productivity", personas: ["distraction", "mask"]),
                    solution: "The team dynamic is of importance here. PLs also keep an eye on distractions, and being muted and being distracted are often happen at the same time."
                ),
                
                Variation(
                    title: "Being muted and having the camera off",
                    variationType: .openQuestionsData(attributions: "Although it hasn't happened in the iPraktikum, this is disliked by the PLs. "),
                    solution: "State this as a rule right at the start of the iPraktikum. PLs in the past have actually worked on such fundamental rules together with their teams."
                )
                
            ]
        )
        
    ]
    
    
    static func write(path: String) {
        let string = behaviours.json
        try? string.write(to: URL(fileURLWithPath: path), atomically: true, encoding: .utf8)
    }
}

extension Encodable {
    var json: String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = (try? encoder.encode(self)) ?? .init()
        return String(decoding: data, as: UTF8.self)
    }
}
