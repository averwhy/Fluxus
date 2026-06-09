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
    // this is the entire library where users store their songs and playlists.
    // songs can be on the root level (which is what `tracks` is), but there can also be playlists that contain songs.
    var tracks: [Track]
    var playlists: [Playlist]
    
    init(tracks: [Track], playlists: [Playlist]) {
        self.tracks = tracks
        self.playlists = playlists
    }
}
