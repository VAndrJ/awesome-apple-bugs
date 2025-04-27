//
//  MRE.swift
//
//  Created by VAndrJ on 4/27/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Animation stops working in Lazy containers (Stacks, Grids) when navigating to the next screen and returning.
/// Solution / workaround:
struct ContentView: View {
    @State private var value = 0
    @State private var id = UUID()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { _ in
                        ExampleAnimationView(value: $value)
                    }
                }
                .id(id)
            }
            .onAppear {
                id = UUID()
            }
            .navigationDestination(for: Int.self) {
                Text("\($0)")
            }
        }
    }
}

struct ExampleAnimationView: View {
    @Binding var value: Int

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.largeTitle)
                .bold()
                .contentTransition(.numericText(countsDown: true))
                .animation(.default, value:value)
                .onTapGesture {
                    value = Int.random(in: 0...1000)
                }

            NavigationLink("Open", value: value)
        }
        .padding()
    }
}
