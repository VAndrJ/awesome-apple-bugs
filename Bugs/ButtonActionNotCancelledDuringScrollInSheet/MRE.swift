//
//  SceneDelegate.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import SwiftUI

/// The button action is not canceled during scrolling in sheet and is executed after scrolling completes.
struct ContentView: View {
    @State private var isSheetPresented = false

    var body: some View {
        Button("Open sheet") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<30, id: \.self) { index in
                        Button {
                            print("\(index) button action")
                        } label: {
                            Text("\(index) button")
                                .frame(maxWidth: .infinity, idealHeight: 64)
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                    }
                }
            }
        }
    }
}
