//
//  Library.swift
//  
//
//  Created by avery b on 2/23/26.
//

import Foundation
import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack {
            Text("Library")
                .font(.headline)
            
            List(0..<20) { i in
                Text("Track \(i)")
            }
        }
        .background(Color(nsColor: .controlBackgroundColor))
    }
}
