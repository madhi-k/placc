//
//  YoungPLManual.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct YoungPLManualView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hey you, welcome to the world of project management and leadership!\n\nOver the course of the last semesters, we have created a compilation of tips and tricks to help you navigate through this experience. Hope we can be of help")
                    .padding(.horizontal)
                ExpandableView(headerTitle: "Social aspect") {
                    Text("Social aspect")
                }
                ExpandableView(headerTitle: "Behavioural aspects") {
                    Text("Social aspect")
                }
            }.navigationTitle("Young PL's Manual")
            .font(.alata())
        }
    }
}

struct YoungPLManualView_Previews: PreviewProvider {
    static var previews: some View {
        YoungPLManualView()
    }
}
