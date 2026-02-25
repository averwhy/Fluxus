//
//  Track.swift
//  
//
//  Created by avery b on 2/23/26.
//

import SwiftData
import Foundation

@Model
class Track {
    // here we are only storing data that isn't part of the songs metadata, so stuff like the songs title/artist/album/year will be retrieved from the file itself. fluxus will offer a way to edit the metadata as well
    var filePath: String
    var analysis: Analysis? // this will contain the bpm, time signature, key, etc
    var cue: Cue?
    var hotcues: [Hotcue]?
    
    init(filePath: String, analysis: Analysis?) {
        self.filePath = filePath
        self.analysis = analysis
    }
}
