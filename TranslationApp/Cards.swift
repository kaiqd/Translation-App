//
//  Cards.swift
//  TranslationApp
//
//  Created by Kaique Diniz on 29/10/24.
//

import SwiftUI

struct CardsView: View {
    var iconName: String
    var label: String
    
    var body: some View {
        
        VStack(spacing: 12) {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.cardsContent)
                .frame(width: 55, height: 48)
            
            Text(label)
                .font(.custom("Satoshi", size: 16))
                .foregroundColor(.cardsContent)
        }
        .frame(width: 159, height: 170)
        .background(Color.cards)
        .cornerRadius(16)
    }
}
