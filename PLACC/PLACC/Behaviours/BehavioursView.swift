//
//  BehavioursView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct BehavioursView: View {
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Feel free to choose a behaviour you would like to learn more about").padding(.horizontal, 8)
                    LazyVGrid(columns: layout, spacing: 6) {
                        ForEach(0..<30) { _ in
                            NavigationLink(destination: BehaviourDetailView()) {
                                BehaviourCardView()
                                    .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                                    .padding(6)
                            }
                        }
                    }
                }
            }.padding(.horizontal, 6)
            .navigationTitle("Behaviours")
            .font(.alata())
        }
    }
}

struct BehaviourCardView: View {
    var body: some View {
        ZStack {
            Color.black
            VStack {
                Image("mobile_user")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 60)
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)
                Text("Joining meeting via mobile phone")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.bottom, 12)
            }
        }.cornerRadius(22)
    }
}

struct BehavioursView_Previews: PreviewProvider {
    static var previews: some View {
        BehavioursView()
    }
}
