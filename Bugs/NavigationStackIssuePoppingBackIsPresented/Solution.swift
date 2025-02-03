//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// Solution / Workaround.
/// NavigationStack issue: popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
enum Destination {
    case firstScreen
    case secondScreen
}

struct ContentView: View {
    /// Solution / Workaround.
    @State private var path: [Destination] = []

    var body: some View {
        NavigationStack(path: $path) {
            Button("Push first") {
                path.append(.firstScreen)
            }
            .navigationTitle("Root")
            .navigationDestination(for: Destination.self, destination: { screen in
                switch screen {
                case .firstScreen:
                    FirstScreen(path: $path)
                case .secondScreen:
                    SecondScreen(path: $path)
                }
            })
        }
    }
}

struct FirstScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        VStack(spacing: 32) {
            Button("Push second") {
                path.append(.secondScreen)
            }
            Button("Back to root") {
                path.removeAll()
            }
        }
        .navigationTitle("First")
    }
}

struct SecondScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        VStack(spacing: 32) {
            Button("Back") {
                path.removeLast()
            }
            Button("Back to root") {
                path.removeAll()
            }
        }
        .navigationTitle("Second")
    }
}

