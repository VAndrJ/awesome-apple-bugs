//
//  MRE.swift
//
//  Created by VAndrJ on 3/26/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Crash occurs after deleting last element
struct ContentView: View {
    @State private var items: [ExampleItem] = [
        ExampleItem(isActive: false),
    ]

    var body: some View {
        List {
            ForEach($items) { $item in
                Toggle("Delete me", isOn: $item.isActive)
            }
            .onDelete {
                items.remove(atOffsets: $0)
            }
        }
    }
}

struct ExampleItem: Identifiable {
    let id = UUID()
    var isActive: Bool
}
