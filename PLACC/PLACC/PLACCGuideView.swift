//
//  PLACCGuideView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct PLACCGuideView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("How to use:")
            }.navigationTitle("PLACC Guide")
        }
    }
}

struct PLACCGuideView_Previews: PreviewProvider {
    static var previews: some View {
        PLACCGuideView()
    }
}
