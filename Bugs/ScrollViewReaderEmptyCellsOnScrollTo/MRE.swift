//
//  MRE.swift
//
//  Created by VAndrJ on 4/10/25.
//

import SwiftUI

struct ContentView: View {
    let sections: [String] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map(String.init)

    var body: some View {
        ScrollViewReader { proxy in
            List(sections, id: \.self) { section in
                Section(section) {
                    ForEach(0...100, id: \.self) {
                        Text("\($0) \(section)")
                    }
                }
            }
            .listStyle(.plain)
            .padding(.trailing)
            .overlay {
                VStack {
                    ForEach(sections, id: \.self) { title in
                        Text(title)
                            .onTapGesture {
                                withAnimation {
                                    proxy.scrollTo(title, anchor: .top)
                                }
                            }
                    }
                }
                .padding(.horizontal, 4)
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
