//
//  Personas.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct PersonasView: View {
    let personas = Persona.content
    let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    LazyVGrid(columns: layout, spacing: 6) {
                        ForEach(personas, id: \.title) { persona in
                            PersonaCard(persona: persona)
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
    var persona: Persona
    
    var body: some View {
        VStack {
            Image(persona.imageName)
                .resizable()
                .scaledToFit()
                .padding(.top, 60)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            Text(persona.title).font(.alata(size: 25)).padding(.vertical, 6)
            Text(persona.description)
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
