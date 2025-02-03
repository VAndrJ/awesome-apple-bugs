//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// NavigationStack issue: popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
struct ContentView: View {
    @State private var isFirstScreenPushed = false

    var body: some View {
        NavigationStack {
            Button("Push first") {
                isFirstScreenPushed = true
            }
            .navigationTitle("Root")
            .navigationDestination(isPresented: $isFirstScreenPushed) {
                FirstScreen(isFirstScreenPushed: $isFirstScreenPushed)
            }
        }
    }
}

struct FirstScreen: View {
    @Binding var isFirstScreenPushed: Bool

    @State private var isSecondScreenPushed = false

    var body: some View {
        VStack(spacing: 32) {
            Button("Push second") {
                isSecondScreenPushed = true
            }
            Button("Back to root") {
                isFirstScreenPushed = false
            }
        }
        .navigationTitle("First")
        .navigationDestination(isPresented: $isSecondScreenPushed) {
            SecondScreen(
                isFirstScreenPushed: $isFirstScreenPushed,
                isSecondScreenPushed: $isSecondScreenPushed
            )
        }
    }
}

struct SecondScreen: View {
    @Binding var isFirstScreenPushed: Bool
    @Binding var isSecondScreenPushed: Bool

    var body: some View {
        VStack(spacing: 32) {
            Button("Back") {
                isSecondScreenPushed = false
            }
            Button("Back to root") {
                isFirstScreenPushed = false
            }
        }
        .navigationTitle("Second")
    }
}

