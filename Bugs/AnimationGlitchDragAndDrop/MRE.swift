//
//  ContentView.swift
//  MRE
//
//  Created by VAndrJ on 2/1/25.
//

import SwiftUI

/// Example for easy reproduction.
/// Animation glitch on drag and drop action.
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Drag me")
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity, idealHeight: 200)
                .border(.blue)
                .background(.green.opacity(0.1))
                .draggable(Draggable(identifier: "identifier"))

            Spacer()

            Text("Drop here")
                .font(.largeTitle)
                .frame(width: 200, height: 100)
                .background(.blue.opacity(0.2))
                .dropDestination(for: Draggable.self) { items, location in
                    print(items, location)

                    return true
                }
        }
        .padding()
    }
}

import UniformTypeIdentifiers

extension UTType {
    static let draggable = UTType(exportedAs: "com.vandrj.DraggableMRE.draggable")
}

struct Draggable: Codable, Transferable {
    let identifier: String

    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .draggable)
    }
}
