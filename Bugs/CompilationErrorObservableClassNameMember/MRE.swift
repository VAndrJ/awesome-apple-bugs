//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI
import Observation

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
}

