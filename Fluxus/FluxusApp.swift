//
//  FluxusApp.swift
//  Fluxus
//
//  Created by avery b on 2/23/26.
//

import SwiftUI
import SwiftData

@main
struct FluxusApp: App {
    var body: some Scene {
        WindowGroup {
            Main()
        }
        .modelContainer(for: [Track.self, Playlist.self])
    }
}
