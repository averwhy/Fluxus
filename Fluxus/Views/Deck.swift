//
//  Deck.swift
//  
//
//  Created by avery b on 2/23/26.
//

import Foundation
import SwiftUI

struct DeckView: View {
    let deckNumber: Int
    
    var body: some View {
        VStack {
            Text("Deck \(deckNumber)")
                .font(.title)
            
            HStack {
                Button("Play") { }
                Button("Cue") { }
                Slider(value: .constant(0.5))
                    .frame(width: 200)
            }
            .padding()
        }
        .background(Color(nsColor: .windowBackgroundColor))
    }
}
