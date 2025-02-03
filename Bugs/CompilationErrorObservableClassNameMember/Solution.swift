//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI
import Observation

/// Solution / Workaround
/// Compilation error if `Observable` class name is `Member`.
struct ContentView: View {
    @State var member = Member(name: "Swift")

    var body: some View {
        VStack(spacing: 24) {
            Text("\(member.name)")
            Text("\(member.subscription ? "Member" : "Guest")")
                .foregroundStyle(member.subscription ? .green : .red)
            Button("Toggle subscription") {
                member.subscription.toggle()
            }
        }
    }
}

@Observable
class Member {
    let name: String
    var subscription: Bool

    init(
        name: String,
        subscription: Bool = false
    ) {
        self.name = name
        self.subscription = subscription
    }

    /// Solution / Workaround
    internal nonisolated func access<_TObservableRegistrarMember>(
        keyPath: KeyPath<Member, _TObservableRegistrarMember>
    ) {
        _$observationRegistrar.access(self, keyPath: keyPath)
    }

    internal nonisolated func withMutation<_TObservableRegistrarMember, _TObservableMutationResult>(
        keyPath: KeyPath<Member, _TObservableRegistrarMember>,
        _ mutation: () throws -> _TObservableMutationResult
    ) rethrows -> _TObservableMutationResult {
        try _$observationRegistrar.withMutation(of: self, keyPath: keyPath, mutation)
    }
}

