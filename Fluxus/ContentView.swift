//
//  ContentView.swift
//  Fluxus
//
//  Created by avery b on 2/23/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0) {
            // Library sidebar
            LibraryView()
                .frame(width: 300)
            
            Divider()
            
            // Main deck area
            VStack(spacing: 0) {
                // Top deck
                DeckView(deckNumber: 1)
                
                Divider()
                
                // Mixer section
                MixerView()
                    .frame(height: 150)
                
                Divider()
                
                // Bottom deck
                DeckView(deckNumber: 2)
            }
        }
        .frame(minWidth: 1000, minHeight: 600)  // Minimum window size
    }
}

#Preview {
    ContentView()
}
