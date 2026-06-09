//
//  DeckAudio.swift
//  Fluxus
//
//  Created by avery b on 3/25/26.
//

import AVFAudio
import Foundation

struct DeckAnalysisSnapshot {
    let bpm: Double
    let beatGrid: [TimeInterval]   // timestamp of every beat
    let cuePoints: [TimeInterval]
    let duration: TimeInterval
//    let waveformData: WaveformData // pre-computed, ready to render
}

class DeckAudio {
    let player: AVAudioPlayerNode
    var file: AVAudioFile?
    var analysis: DeckAnalysisSnapshot?
    
    func load(url: URL, analysis: Analysis) throws {
        self.file = try AVAudioFile(forReading: url)
            // TODO
            // Copy what you need from the @Model into a plain struct
//            self.analysis = DeckAnalysisSnapshot(
//                bpm: analysis.bpm,
//                beatGrid: analysis.beatGrid,
//                cuePoints: analysis.cuePoints,
//                duration: analysis.duration,
//                waveformData: analysis.waveform
//            )
        }
    
    init (player: AVAudioPlayerNode, file: AVAudioFile? = nil, analysis: DeckAnalysisSnapshot? = nil) {
        self.player = player
        self.file = file
        self.analysis = analysis
    }
}
