//
//  Records.swift
//  TranslationApp
//
//  Created by Kaique Diniz on 29/10/24.
//

import SwiftUI

struct Records: View {
    
    var title: String
    var date: String
    
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(Color.cards)
                .frame(width: 52, height: 52)
                .overlay(
                    Image(systemName: "waveform")
                        .font(.title2)
                        .foregroundColor(.cardsContent)
                    )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.custom("Satoshi-Bold", size: 18))
                    .foregroundColor(.primary)
                    
                Text(date)
                    .font(.custom("Satoshi-Regular", size: 16))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    Records(title: "Gravação Ao Vivo 02", date: "29/10/24")
}
