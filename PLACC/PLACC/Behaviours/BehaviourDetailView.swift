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
            
            VariationCompleteView() {
                Text("I am displayed")
            }
            
            VariationCompleteView {
                VariationDetailView(isSurveyBehaviour: true)
            }
            
            VariationCompleteView {
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

struct VariationCompleteView<V: View>: View {
    @State var variationIsOpen = false
    let content: V
    
    init(@ViewBuilder content: () -> V) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            VariationButtonView(variationIsOpen: variationIsOpen)
                .onTapGesture {
                    withAnimation { variationIsOpen.toggle() }
                }
            if variationIsOpen {
                content
            }
        }.padding(.horizontal)
        .padding(.bottom)
    }
}

struct VariationButtonView: View {
    var variationIsOpen: Bool
    
    var body: some View {
        ZStack {
            Color.black
            HStack {
                Text("Riding a bike, getting groceries at the supermarket").foregroundColor(.white)
                Spacer()
                Image(systemName: variationIsOpen ? "chevron.up" :  "chevron.down").foregroundColor(.white)
            }.padding()
        }
        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
        .cornerRadius(12)
    }
}

struct BehaviourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BehaviourDetailView()
    }
}
