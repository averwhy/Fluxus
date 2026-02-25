//
//  Playlist.swift
//  
//
//  Created by avery b on 2/23/26.
//

import SwiftData
import Foundation

@Model
class Playlist{
    var name: String
    var tracks: [Track]
    
    init(tracks: [Track] = []) {
        self.tracks = tracks
    }
}
