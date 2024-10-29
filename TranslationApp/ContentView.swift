//
//  ContentView.swift
//  TranslationApp
//
//  Created by Kaique Diniz on 20/10/24.
//

import SwiftUI

struct ContentView: View {
    
    let gravacoes = [
            ("Gravação Ao Vivo 02", "22/03 - 12:59"),
            ("Gravação Ao Vivo 01", "22/03 - 12:53"),
            ("Vídeo 03", "21/03 - 10:32"),
            ("Vídeo 02", "20/03 - 08:46")
        ]
    
    var body: some View {
        
        HStack(spacing: 16) {
            CardsView(iconName: "folder.badge.plus", label: "Enviar arquivo")
            
            CardsView(iconName: "waveform.and.mic", label: "Gravar áudio")
        }
        .padding()
        
        VStack(alignment: .leading, spacing: 4) {
            Text("Minhas traduções")
                .font(.custom("Satoshi", size: 20))
                .bold()
                .padding(.horizontal)
            
            ForEach(gravacoes, id: \.0) { gravacao in
                Records(title: gravacao.0, date: gravacao.1)
                    .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}

#Preview {
    ContentView()
}
