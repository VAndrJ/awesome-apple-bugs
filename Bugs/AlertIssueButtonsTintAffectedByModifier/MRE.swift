//
//  MRE.swift
//
//  Created by VAndrJ on 2/7/25.
//

import SwiftUI

/// Alert issue: `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
struct ContentView: View {
    @State private var isAlertPresented = false
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            Text("Next")
                .foregroundStyle(.blue)
                .onTapGesture {
                    isAlertPresented = true
                }
                .alert("Leave?", isPresented: $isAlertPresented) {
                    Button("Go next") {
                        path.append("hello") // Doesn't matter for MRE
                    }
                    Button("cancel", role: .cancel) {}
                    Button("destructive", role: .destructive) {}
                }
                .navigationDestination(for: String.self) { _ in // Doesn't matter for MRE
                    Text("Hello, World!")
                }
        }
        .tint(.green)
    }
}
