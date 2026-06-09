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
    @State var vol: Double

    var body: some View {
        VStack {
            Text("Deck \(deckNumber)")
                .font(.title)

            HStack {
                Button("Play") {}
                Button("Cue") {}
                Slider(value: $vol, in: 0...100, )
                    .frame(width: 200)
                    .onChange(of: vol) {
                        print("[Deck \(deckNumber)] volume: \(self.vol)")
                    }
            }
            .padding()
        }
        .background(Color(nsColor: .windowBackgroundColor))
    }

    init(deckNumber: Int) {
        self.deckNumber = deckNumber
        self.vol = 50.0
    }
}
