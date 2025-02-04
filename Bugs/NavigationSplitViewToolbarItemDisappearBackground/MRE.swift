//
//  MRE.swift
//
//  Created by VAndrJ on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var columnVisibility: NavigationSplitViewVisibility = .all

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            Text("Side")
                .toolbar {
                    ToolbarItem {
                        Text("Example")
                    }
                    ToolbarItem {
                        Button("Detail") {
                            columnVisibility = .detailOnly
                        }
                    }
                }
        } content: {
            Text("Content")
        } detail: {
            Text("Detail")
        }
    }
}
