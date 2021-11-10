//
//  BehavioursView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct BehavioursView: View {
    let behaviours = Behaviour.content
    
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
                        ForEach(behaviours, id: \.title) { behaviour in
                            NavigationLink(destination: BehaviourDetailView(behaviour: behaviour)) {
                                BehaviourCardView(behaviour: behaviour)
                                    .shadow(color: .gray.opacity(0.6), radius: 10, x: 0, y: 0)
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
    var behaviour: Behaviour
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                Spacer()
                VStack(alignment: .center) {
                    Image(behaviour.imageName)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 12)
                        .padding(.top)
                        .padding(.bottom, 16)
                }
                HStack {
                    Text(behaviour.title)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .padding(.bottom, 16)
                        .padding(.horizontal, 12)
                    Spacer()
                }
            }
        }.cornerRadius(22)
        .frame(height: 230)
    }
}

struct BehavioursView_Previews: PreviewProvider {
    static var previews: some View {
        BehavioursView()
    }
}
