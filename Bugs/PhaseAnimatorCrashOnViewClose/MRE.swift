//
//  MRE.swift
//
//  Created by VAndrJ on 2/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 64) {
                Button("Next") {
                    path.append("1")
                }
            }
            .navigationDestination(for: String.self, destination: { _ in
                BreathingView()
            })
        }
    }
}

struct BreathingView: View {
    private let isExpandedPhases: [Bool] = [false, true]
    private let count = 6
    private let radius: CGFloat = 64

    var body: some View {
        VStack {
            Text("Breathe")
            PhaseAnimator(isExpandedPhases) { isExpanded in
                VStack(spacing: 16) {
                    Text(isExpanded ? "inhale" : "exhale")
                    ZStack {
                        ForEach(0..<count, id: \.self) { index in
                            Circle()
                                .fill(.teal.opacity(0.6))
                                .frame(size: .init(same: radius * (isExpanded ? 2 : 1)))
                                .offset(x: isExpanded ? radius : 0)
                                .rotationEffect(.radians(.pi * 2 * Double(index) / Double(count)))
                        }
                    }
                    .rotationEffect(.radians(isExpanded ? 0 : -.pi / Double(count) ))
                    .frame(size: .init(same: radius * 4))
                }
            }
        }
    }
}

extension View {
    @inlinable nonisolated public func frame(
        size: CGSize,
        alignment: Alignment = .center
    ) -> some View {
        return frame(
            width: size.width,
            height: size.height,
            alignment: alignment
        )
    }
}

extension CGSize {

    init(same: CGFloat) {
        self.init(width: same, height: same)
    }
}

