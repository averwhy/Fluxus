//
//  FluxusApp.swift
//  Fluxus
//
//  Created by avery b on 2/23/26.
//

import SwiftUI
import SwiftData
import AppKit
import CoreText

extension Font {
    static let appBody = Font.custom("B612 Mono", size: 14, relativeTo: .body)
}

/// scuffed because putting it in info.plist by itself doesn't work
func registerCustomFonts() {
    let fonts = ["B612Mono-Regular.ttf", "B612Mono-Bold.ttf", "B612Mono-Italic.ttf", "B612Mono-BoldItalic.ttf"]
    
    for font in fonts {
            guard let url = Bundle.main.url(forResource: font, withExtension: "ttf") else {
                print("MISSING FONT: \(font)")
                continue
            }
            
            var error: Unmanaged<CFError>?
            let success = CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error)
            
            if success {
                print("REGISTERED: \(font)")
            } else {
                let message = error?.takeRetainedValue().localizedDescription ?? "UNKNOWN ERROR"
                print("FAILED TO REGISTER \(font): \(message)")
            }
}

@main
struct FluxusApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init() {
        registerCustomFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .font(.appBody)
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
                Button("New Playlist...") { }
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
