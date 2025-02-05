//
//  MRE.swift
//
//  Created by VAndrJ on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    private let colors = [Color.orange, .green, .yellow, .blue, .purple]
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            ForEach(colors.indices, id: \.self) { index in
                ZStack {
                    colors[index]
                    Text("Page \(index)")
                }
            }
        }
        .tabViewStyle(.page)
    }
}
