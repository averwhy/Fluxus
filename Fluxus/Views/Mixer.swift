//
//  Mixer.swift
//  Fluxus
//
//  Created by avery b on 3/23/26.
//

import Foundation
import SwiftUI

struct MixerView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Deck 1")
                Slider(value: .constant(0.7), in: 0...1) { Text("Volume") }
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50, height: 100)
            }
            
            Spacer()
            
            VStack {
                Text("Crossfader")
                Slider(value: .constant(0.5))
                    .frame(width: 300)
            }
            
            Spacer()
            
            VStack {
                Text("Deck 2")
                Slider(value: .constant(0.7), in: 0...1) { Text("Volume") }
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50, height: 100)
            }
        }
        .padding()
        .background(Color(nsColor: .controlBackgroundColor))
    }
}
