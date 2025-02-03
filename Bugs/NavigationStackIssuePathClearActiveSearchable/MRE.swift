//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// NavigationStack issue: when clearing a path, it does not go back if there was a transition with an active .searchable.
struct ContentView: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            ExampleView(path: $path, title: "Root")
                .navigationDestination(for: String.self) { title in
                    ExampleView(path: $path, title: title)
                }
        }
    }
}

struct ExampleView: View {
    @Binding var path: [String]
    let title: String

    @State private var text = ""

    var body: some View {
        Text(#"Enter the title and press "search""#)
            .navigationBarTitle(title)
            .toolbar {
                if !path.isEmpty {
                    ToolbarItem {
                        Button("Root") {
                            path.removeAll()
                        }
                    }
                }
            }
            .searchable(text: $text)
            .onSubmit(of: .search) {
                path.append(text)
            }
    }
}

