//
//  Library.swift
//  Fluxus
//
//  Created by avery b on 3/24/26.
//

import SwiftData
import Foundation

@Model
class TrackLibrary {
    var tracks: [Track]
    var playlists: [Playlist]
    
    init(tracks: [Track], playlists: [Playlist]) {
        self.tracks = tracks
        self.playlists = playlists
    }
}
