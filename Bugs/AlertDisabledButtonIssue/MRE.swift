//
//  MRE.swift
//
//  Created by VAndrJ on 4/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertPresented = false
    @State private var text = ""
    @State private var saved = ""

    var body: some View {
        VStack {
            Button("Save file") {
                isAlertPresented = true
            }
            Text("Saved: \(saved)")
        }
        .alert("Save file", isPresented: $isAlertPresented) {
            TextField("File name", text: $text)
            Button("Save") {
                saved = text
            }
            .disabled(text.isEmpty)
        }
    }
}
