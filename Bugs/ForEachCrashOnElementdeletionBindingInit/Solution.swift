//
//  MRE.swift
//
//  Created by VAndrJ on 3/26/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Crash occurs after deleting last element.
/// Thanks [Vadym K.](https://www.linkedin.com/in/vadym-kharionovskyi/) for solution.
struct ContentView: View {
    @State private var items: [ExampleItem] = [
        ExampleItem(isActive: false),
    ]

    var body: some View {
        List {
            ForEach($items) { $item in
                let binding = $item.ifEmpty($items, default: .init(isActive: false))
                Toggle("Delete me", isOn: binding.isActive)
            }
            .onDelete { offsets in
                items.remove(atOffsets: offsets)
            }
        }
    }
}

extension Binding {
    func ifEmpty<C: Collection>(
        _ items: Binding<C>,
        default value: Value
    ) -> Self where C.Element == Value {
        return .init(
            get: { items.wrappedValue.isEmpty ? value : wrappedValue },
            set: { wrappedValue = $0 }
        )
    }
}

struct ContentView1: View {
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

struct ExampleItem: Identifiable {
    let id = UUID()
    var isActive: Bool
}
