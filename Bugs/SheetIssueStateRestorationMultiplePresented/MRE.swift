//
//  MRE.swift
//
//  Created by VAndrJ on 2/10/25.
//

import SwiftUI

/// Sheets issue: if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
struct ContentView: View {
    @SceneStorage("ContentView1") var isSheetPresented = false

    var body: some View {
        Button("ContentView.\nOpen ContentView1") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            ContentView1()
        }
    }
}

struct ContentView1: View {
    @SceneStorage("ContentView2") var isSheetPresented = false

    var body: some View {
        Button("ContentView1.\nOpen ContentView2") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            ContentView2()
        }
    }
}

struct ContentView2: View {
    @SceneStorage("ContentView3") var isSheetPresented = false

    var body: some View {
        Button("ContentView2.\nOpen ContentView3") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            ContentView3()
        }
    }
}

struct ContentView3: View {
    @SceneStorage("ContentView4") var isSheetPresented = false

    var body: some View {
        Button("ContentView3.\nOpen ContentView4") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            ContentView4()
        }
    }
}

struct ContentView4: View {
    var body: some View {
        Text("ContentView4")
    }
}
