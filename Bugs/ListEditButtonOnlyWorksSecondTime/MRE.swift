//
//  MRE.swift
//
//  Created by VAndrJ on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var listData = ["One", "Two", "Three", "Four", "Five"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(listData, id: \.self) {
                    Text($0)
                }
                .onDelete(perform: {
                    listData.remove(atOffsets: $0)
                })
            }
            .toolbar {
                EditButton()
            }
        }
    }
}
