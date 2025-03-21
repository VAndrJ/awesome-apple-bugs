//
//  MRE.swift
//
//  Created by VAndrJ on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresentedTopLeading: Bool = false
    @State private var isPresentedTopTrailing: Bool = false
    @State private var isPresentedCenter: Bool = false
    @State private var isPresentedBottomLeading: Bool = false
    @State private var isPresentedBottomTrailing: Bool = false
    @State private var arrowEdge: Edge = .top

    var body: some View {
        VStack {
            Text("popover arrowEdge")
            Picker("", selection: $arrowEdge) {
                ForEach(Edge.allCases, id: \.rawValue) { direction in
                    Text("\(direction)")
                        .tag(direction)
                }
            }
            .pickerStyle(.segmented)

            HStack {
                Button("top leading") {
                    isPresentedTopLeading = true
                }
                .popover(isPresented: $isPresentedTopLeading, arrowEdge: arrowEdge) {
                    PopoverView()
                        .presentationCompactAdaptation(.popover)
                }
                Spacer()
                Button("top trailing") {
                    isPresentedTopTrailing = true
                }
                .popover(isPresented: $isPresentedTopTrailing, arrowEdge: arrowEdge) {
                    PopoverView()
                        .presentationCompactAdaptation(.popover)
                }
            }

            Spacer()

            Button("center") {
                isPresentedCenter = true
            }
            .popover(isPresented: $isPresentedCenter, arrowEdge: arrowEdge) {
                PopoverView()
                    .presentationCompactAdaptation(.popover)
            }

            Spacer()

            HStack {
                Button("bottom leading") {
                    isPresentedBottomLeading = true
                }
                .popover(isPresented: $isPresentedBottomLeading, arrowEdge: arrowEdge) {
                    PopoverView()
                        .presentationCompactAdaptation(.popover)
                }
                Spacer()
                Button("bottom trailing") {
                    isPresentedBottomTrailing = true
                }
                .popover(isPresented: $isPresentedBottomTrailing, arrowEdge: arrowEdge) {
                    PopoverView()
                        .presentationCompactAdaptation(.popover)
                }
            }
        }
        .padding()
    }
}
