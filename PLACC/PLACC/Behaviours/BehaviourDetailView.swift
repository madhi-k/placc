//
//  BehaviourDetailView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct BehaviourDetailView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Joining meetings via mobile phone")
                    .font(.alata(size: 40))
                Spacer()
            }.padding(.horizontal)
            Image("mobile_user")
                .resizable()
                .scaledToFit()
                .padding(.top, 60)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            HStack {
                Text("It might look like:")
                Spacer()
            }.padding(.horizontal)
            
            ExpandableView(headerTitle: "First Variation") {
                Text("I am displayed")
            }
            
            ExpandableView(headerTitle: "Second Variation") {
                VariationDetailView(isSurveyBehaviour: true)
            }
            
            ExpandableView(headerTitle: "Third Variation") {
                VariationDetailView(isSurveyBehaviour: false)
            }
        }
            .font(.alata())
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Image(systemName: "arrow.left").onTapGesture {
                self.presentation.wrappedValue.dismiss()
            })
    }
}



struct BehaviourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BehaviourDetailView()
    }
}
