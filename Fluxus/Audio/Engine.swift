//
//  Engine.swift
//
//
//  Created by avery b on 2/23/26.
//

import AVFAudio
import Foundation

class FluxusAudio {
    var engine: AVAudioEngine
    var decks: [AVAudioPlayerNode] = []

    init(deckCount: UInt8) {
        self.engine = AVAudioEngine()
        for _ in 0..<deckCount {
            attachNewDeck()
        }
        
        do {
            try engine.start()
        } catch {
            print("[FluxusAudio] Engine failed to start: \(error)")
        }
    }

    /**
        Adds an `AVAudioPlayerNode` into the deck nodes array.
    
        - Returns: The new AVAudioPlayerNode added to the `deck_nodes` array.
    */
    func addDeck() -> AVAudioPlayerNode {
        let newDeck: AVAudioPlayerNode = AVAudioPlayerNode()
        self.decks.append(newDeck)
        return newDeck
    }

    /**
        Removes  an `AVAudioPlayerNode` from the deck nodes array.
    
        - Parameter index: (Optional) The index of the `AVAudioPlayerNode` to remove.
    */
    func removeDeck(at index: Int? = nil) {
        let targetIndex = index ?? decks.count - 1
        guard targetIndex >= 0, targetIndex < decks.count else { return }

        let node = decks[targetIndex]
        node.stop()
        engine.detach(node)  // detach removes it from the graph too
        decks.remove(at: targetIndex)
    }

    // MARK: - Private
    
    @discardableResult
    private func attachNewDeck() -> AVAudioPlayerNode {
        let player = AVAudioPlayerNode()
        engine.attach(player)
        engine.connect(player, to: engine.mainMixerNode, format: nil)
        decks.append(player)
        return player
    }
}
