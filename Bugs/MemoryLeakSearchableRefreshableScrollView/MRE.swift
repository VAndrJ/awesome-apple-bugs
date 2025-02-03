//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/1/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Run. Go to TestView/back several times and observe the memory report.
struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Next") {
                TestView()
            }
        }
    }
}

struct TestView: View {
    @StateObject var vm2 = ObservableObjectViewModel()
    @State var array = Array(1...2_000_000)
    @State var text = ""
    let num = 10

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...10, id: \.self) {
                    Text("\($0)")
                }
            }
        }
        /// Problem
        .refreshable {
            print(num)
        }
        .searchable(text: $text)
    }
}

class ObservableObjectViewModel: ObservableObject {
    let id = UUID()
    let array = Array(1...2_000_000)

    init() {
        print(#function, Self.self, id)
    }

    deinit {
        print(#function, Self.self, id)
    }
}

