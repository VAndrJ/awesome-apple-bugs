//
//  MRE.swift
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// Solution / Workaround.
/// Sheet issue: `.presentationDetents` is ignored if the sheet is reopened after a short period.
struct ContentView: View {
    @State private var isSheetPresented = false
    /// Solution / Workaround
    @State private var isButtonDisabled = false

    var body: some View {
        Button("Open Sheet") {
            isSheetPresented = true
            isButtonDisabled = true
        }
        .disabled(isButtonDisabled)
        .sheet(isPresented: $isSheetPresented, onDismiss: {
            /// Delay to make the button active when the sheet is dismissed or in any other way.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                isButtonDisabled = false
            }
        }) {
            Text("Sheet Content")
                .presentationDetents([.height(480)])
        }
    }
}
