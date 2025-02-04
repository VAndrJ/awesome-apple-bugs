//
//  MRE.swift
//
//  Created by VAndrJ on 2/4/25.
//

import SwiftUI

/// Solution / Workaround.
/// Gesture issue: when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
struct ContentView: View {
    @State private var translationWidth = 0.0

    var body: some View {
        VStack {
            List(0...1000, id: \.self) {
                Text("\($0)")
            }
            Text("\(translationWidth)")
                .padding(16)
        }
        .highPriorityGesture(
            /// Solution / Workaround
            DragGesture(minimumDistance: 20)
                .onChanged {
                    translationWidth = $0.translation.width
                }
                .onEnded { _ in
                    translationWidth = 0
                }
        )
    }
}

