//
//  Fluxus.swift
//  
//
//  Created by avery b on 2/23/26.
//

import Foundation
import SwiftUI
import SwiftData

@main
struct FluxusApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(for: [Track.self, Playlist.self])
    }
}
