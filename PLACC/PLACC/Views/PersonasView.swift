//
//  Personas.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct PersonasView: View {
    let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    LazyVGrid(columns: layout, spacing: 6) {
                        ForEach(0..<5) { _ in
                            PersonaCard()
                                .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                                .padding()
                        }
                    }
                }
            }.padding(.horizontal, 6)
            .navigationTitle("Personas")
            .font(.alata())
        }
    }
}

struct PersonaCard: View {
    var body: some View {
        VStack {
            Image("mobile_user")
                .resizable()
                .scaledToFit()
                .padding(.top, 60)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            Text("Distraction Monster").font(.alata(size: 25)).padding(.vertical, 6)
            Text("Attributions of this persona relate to the lack of focus one might exhibit during team meeting activities")
        }.padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct PersonasView_Previews: PreviewProvider {
    static var previews: some View {
        PersonasView()
    }
}
