//
//  MRE.swift
//
//  Created by VAndrJ on 3/26/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Crash occurs after going to background and device rotation.
struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase

    @State private var isPopoverPresented = false

    var body: some View {
        VStack(alignment: .center) {
            Button("Present popover") {
                isPopoverPresented = true
            }
            .popover(isPresented: $isPopoverPresented) {
                VStack {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                .padding()
                .presentationCompactAdaptation(.popover)
            }
            .onChange(of: scenePhase) { _, newValue in
                /// Workaround:
                if newValue == .background {
                    isPopoverPresented = false
                }
            }
        }
    }
}
