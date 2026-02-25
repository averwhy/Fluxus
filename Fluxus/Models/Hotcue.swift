//
//  Hotcue.swift
//  
//
//  Created by avery b on 2/23/26.
//

import SwiftData
import Foundation

@Model
class Hotcue {
    var track: Track
    var beat: Int64
    var bar: Int32
    
    init(track: Track, beat: Int64, bar: Int32) {
        self.track = track
        self.beat = beat
        self.bar = bar
    }
}
