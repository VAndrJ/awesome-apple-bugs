//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/1/25.
//

import SwiftUI

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
    let someInjectedFunction: (Int) throws(AwesomeError) -> Void

    init(someInjectedFunction: @escaping (Int) throws(AwesomeError) -> Void) {
        self.someInjectedFunction = someInjectedFunction
    }
}
