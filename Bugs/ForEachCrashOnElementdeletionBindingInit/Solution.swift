//
//  MRE.swift
//
//  Created by VAndrJ on 3/26/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Crash occurs after deleting last element.
struct ContentView: View {
    @State private var items: [ExampleItem] = [
        ExampleItem(isActive: false),
    ]

    var body: some View {
        List {
            ForEach($items) { $item in
                Toggle("Delete me", isOn: $item.isActive)
            }
            .onDelete { offsets in
                /// Workaround. Timing is just for example. Because the crash happens after the animation is finished. You can set "Slow Animations" to check.
                Task {
                    try? await Task.sleep(for: .milliseconds(500))
                    items.remove(atOffsets: offsets)
                }
            }
        }
    }
}
