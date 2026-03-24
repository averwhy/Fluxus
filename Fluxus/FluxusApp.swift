//
//  FluxusApp.swift
//  Fluxus
//
//  Created by avery b on 2/23/26.
//

import SwiftUI
import SwiftData
import AppKit

@main
struct FluxusApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Track.self, Playlist.self])
        .windowStyle(.hiddenTitleBar)
        .defaultSize(
            width: NSScreen.main?.frame.size.width ?? 1200,
            height: NSScreen.main?.frame.size.height ?? 800
        )
        
        Settings {
            SettingsView()
        }
        
        .commands {
            CommandGroup(after: .newItem) {
                Button("New playlist") { }
            }
        }
    }
    
    class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
            func applicationDidFinishLaunching(_ notification: Notification) {
                let mainWindow = NSApp.windows[0]
                mainWindow.delegate = self
            }
            func windowShouldClose(_ sender: NSWindow) -> Bool {
                let alert = NSAlert.init()
                alert.addButton(withTitle: "Cancel")
                alert.addButton(withTitle: "Quit")
                alert.informativeText = "Quit Fluxus?"
                let response = alert.runModal()
                if response == NSApplication.ModalResponse.alertFirstButtonReturn {
                    return false
                    } else {
                    NSApplication.shared.terminate(self)
                    return true
                }
            }
        }
}
