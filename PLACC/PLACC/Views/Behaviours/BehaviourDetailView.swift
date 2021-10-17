//
//  BehaviourDetailView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct BehaviourDetailView: View {
    @Environment(\.presentationMode) var presentation
    let behaviour: Behaviour
    
    var body: some View {
        ScrollView {
            HStack {
                Text(behaviour.title)
                    .font(.alata(size: 40))
                Spacer()
            }.padding(.horizontal)
            Image(behaviour.imageName)
                .resizable()
                .scaledToFit()
                .padding(.top, 60)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            HStack {
                Text("It might look like:")
                Spacer()
            }.padding(.horizontal)
            
            ForEach(behaviour.variations, id: \.self) { variation in
                ExpandableView(headerTitle: variation.title) {
                    VariationDetailView(variation: variation)
                }
            }
        }
        .font(.alata())
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Image(systemName:"arrow.left").onTapGesture {
                self.presentation.wrappedValue.dismiss()
            })
        }
    }


struct BehaviourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BehaviourDetailView(behaviour: Utils.behaviours[0])
    }
}
