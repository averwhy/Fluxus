//
//  Analysis.swift
//  Fluxus
//
//  Created by avery b on 2/25/26.
//

import SwiftData
import Foundation

@Model
class Analysis {
    var track: Track
    var waveform: [Double]
    var bpm: Double
    var key: String
    var timeSignature_beats: Int16
    var timeSignature_noteValue: Int16
    var createdAt: Date
    
    init(track: Track, waveform: [Double], bpm: Double, key: String, timeSignature_beats: Int16, timeSignature_noteValue: Int16, createdAt: Date?){
        self.track = track
        self.waveform = waveform
        self.bpm = bpm
        self.key = key
        self.timeSignature_beats = timeSignature_beats
        self.timeSignature_noteValue = timeSignature_noteValue
        self.createdAt = createdAt ?? Date()
    }
}
