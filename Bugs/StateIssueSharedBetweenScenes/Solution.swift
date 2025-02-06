//
//  MRE.swift
//
//  Created by VAndrJ on 2/6/25.
//

import SwiftUI
import Observation

@main
struct MREApp: App {
    var body: some Scene {
        WindowGroup {
            StateFixContainerView()
        }
    }
}

struct StateFixContainerView: View {
    let id = UUID()

    var body: some View {
        ContentView()
    }
}

struct ContentView: View {
    @State private var counter = Counter()

    var body: some View {
        VStack {
            Text(counter.id.uuidString)
            Button("Add") {
                counter.value += 1
            }
            Text("\(counter.value)")
        }
    }
}

@Observable
class Counter {
    let id = UUID()
    var value = 1
}
