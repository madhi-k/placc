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
                Spacer()
            }
            HStack {
                ForEach(personas, id: \.self) { persona in 
                    Image(persona)
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 60)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)
                }
            }
            HStack {
                Text("According to the PLACC survey")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text(attributions).padding()
            }.cornerRadius(22)
            HStack {
                Text("How to deal with it")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
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
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text(attributions).padding()
            }.cornerRadius(22)
            HStack {
                Text("How to deal with it")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text(solution).padding()
            }.cornerRadius(22)
        }
    }
}

struct VariationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VariationDetailView(variation: Utils.behaviours[0].variations[0])
    }
}
