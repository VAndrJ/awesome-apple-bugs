//
//  MRE.swift
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI
import Observation

/// Gesture issue: `.updating` block is not called on `LongPressGesture`.
/// https://developer.apple.com/documentation/swiftui/longpressgesture example
struct ContentView: View {
    @GestureState private var isDetectingLongPress = false
    @State private var completedLongPress = false


    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentState, gestureState,
                transaction in
                gestureState = currentState
                transaction.animation = Animation.easeIn(duration: 2.0)
            }
            .onEnded { finished in
                self.completedLongPress = finished
            }
    }


    var body: some View {
        Circle()
            .fill(self.isDetectingLongPress ?
                  Color.red :
                    (self.completedLongPress ? Color.green : Color.blue))
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(longPress)
    }
}

