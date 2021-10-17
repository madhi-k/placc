//
//  ExpandableView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct ExpandableView<V: View>: View {
    @State var variationIsOpen = false
    let headerTitle: String
    let content: V
    
    init(headerTitle: String, @ViewBuilder content: () -> V) {
        self.content = content()
        self.headerTitle = headerTitle
    }
    
    var body: some View {
        VStack {
            ExpandableHeaderView(variationIsOpen: variationIsOpen, headerTitle: headerTitle)
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

struct ExpandableHeaderView: View {
    var variationIsOpen: Bool
    var headerTitle: String
    
    var body: some View {
        ZStack {
            Color.black
            HStack {
                Text(headerTitle).foregroundColor(.white)
                Spacer()
                Image(systemName: variationIsOpen ? "chevron.up" :  "chevron.down").foregroundColor(.white)
            }.padding()
        }
        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
        .cornerRadius(12)
    }
}
