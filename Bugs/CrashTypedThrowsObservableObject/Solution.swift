//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/1/25.
//

import SwiftUI

/// Solution / Workaround
/// Example for easy reproduction. 
/// Crash occurs when using a typed throws in a closure variable within an `ObservableObject`.
struct ContentView: View {
    @StateObject private var someClass = SomeClass(someInjectedFunction: { _ in })

    var body: some View {
        Text("Example")
    }
}

enum AwesomeError: Error {
    case dooom
}

@MainActor
class SomeClass: ObservableObject {
    /// Solution / Workaround:
    let someInjectedFunction: (Int) throws -> Void

    init(someInjectedFunction: @escaping (Int) throws -> Void) {
        self.someInjectedFunction = someInjectedFunction
    }
}

