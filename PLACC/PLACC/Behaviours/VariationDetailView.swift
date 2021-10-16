//
//  VariationDetailView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct VariationDetailView: View {
    @State var isSurveyBehaviour: Bool
    
    var body: some View {
        VStack {
            if isSurveyBehaviour {
                HStack {
                    Text("Associated with the personas:")
                    Spacer()
                }
                HStack {
                    Image("mobile_user")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 60)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)
                    Image("mobile_user")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 60)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)
                }
            }
            HStack {
                Text(isSurveyBehaviour ? "According to the PLACC survey" : "From the open questions")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text("87,5% of PLs agree that they are actually not attentive and must schedule more time for the meetings \n 63,5% of PLs agree that this person might not be involved in the team spirit \n 87,5% agree that this person isn't particularly interested in getting the most out of the iPraktikum and the meeting \n 62,5%  would personally consider this quite unprofessional").padding()
            }.cornerRadius(22)
            HStack {
                Text("How to deal with it")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text("You should keep a close eye to this situation, as it might affect the team and the progress of the project. When in doubt, analyze their performance and listen to the rest of the team and their impression. Also, pay close attention to the explanations they are giving, or better say, if they are giving any at all.").padding()
            }.cornerRadius(22)
        }
    }
}

struct VariationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VariationDetailView(isSurveyBehaviour: true)
    }
}
