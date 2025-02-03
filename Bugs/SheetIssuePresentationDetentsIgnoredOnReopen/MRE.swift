//
//  MRE.swift
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// Sheet issue: `.presentationDetents` is ignored if the sheet is reopened after a short period.
struct ContentView: View {
    @State private var isSheetPresented = false

    var body: some View {
        Button("Open Sheet") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            Text("Sheet Content")
                .presentationDetents([.height(480)])
        }
    }
}
