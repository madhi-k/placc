//
//  VariationDetailView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct VariationDetailView: View {
    var variation: Variation
    
    var body: some View {
        VStack {
            switch variation.variationType {
            case let .questionnaireData(attributions, personas):
                QuestionnaireDataView(personas: personas, attributions: attributions, solution: variation.solution)
            case let .openQuestionsData(attributions):
                OpenQuestionsView(attributions: attributions, solution: variation.solution)
            }
        }
    }
}


struct QuestionnaireDataView: View {
    var personas: [String]
    var attributions: String
    var solution: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Associated with the personas:")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
            }
            HStack {
                ForEach(personas, id: \.self) { persona in 
                    Image(persona)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 8)
                }
            }
            HStack {
                Text("According to the PLACC survey")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
            }
            ZStack {
                Color("placc_lavender")
                Text(attributions).padding()
            }.cornerRadius(22)
            HStack {
                Text("How to deal with it")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
            }
            ZStack {
                Color("placc_lavender")
                Text(solution).padding()
            }.cornerRadius(22)
        }
    }
}

struct OpenQuestionsView: View {
    var attributions: String
    var solution: String
    
    var body: some View {
        VStack {
            HStack {
                Text("From the open questions")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
            }
            ZStack {
                Color("placc_lavender")
                Text(attributions).padding()
            }.cornerRadius(22)
            HStack {
                Text("How to deal with it")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
            }
            ZStack {
                Color("placc_lavender")
                Text(solution).padding()
            }.cornerRadius(22)
        }
    }
}

struct VariationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VariationDetailView(variation: Behaviour.content[0].variations[0])
    }
}
