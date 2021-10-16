//
//  SurveyBehaviourDetails.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct SurveyBehaviourDetails: View {
    var body: some View {
        VStack {
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
            HStack {
                Text("According to the PLACC survey")
                Spacer()
            }
            ZStack {
                Color.blue.opacity(0.4)
                Text("87,5% of PLs agree that they are actually not attentive and must schedule more time for the meetings \n 63,5% of PLs agree that this person might not be involved in the team spirit \n 87,5% agree that this person isn't particularly interested in getting the most out of the iPraktikum and the meeting \n 62,5%  would personally consider this quite unprofessional").padding()
            }.cornerRadius(22)
        }
    }
}

struct SurveyBehaviourDetails_Previews: PreviewProvider {
    static var previews: some View {
        SurveyBehaviourDetails()
    }
}
