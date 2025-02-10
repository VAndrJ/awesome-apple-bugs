//
//  MRE.swift
//
//  Created by VAndrJ on 2/10/25.
//

import SwiftUI

/// Solution / Workaround.
/// Sheets issue: if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
struct ContentView: View {
    @SceneStorage("ContentView1") var isSheetPresented = false

    var body: some View {
        Button("ContentView.\nOpen ContentView1") {
            isSheetPresented = true
        }
        /// Solution / Workaround
        .delayedSheet(isPresented: $isSheetPresented) {
            ContentView1()
        }
    }
}

extension View {

    func delayedSheet<Content: View>(isPresented: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View {
        modifier(DelayedSheetModifier(isPresented: isPresented, sheetContent: content))
    }
}

struct DelayedSheetModifier<SheetContent: View>: ViewModifier {
    @Binding var isPresented: Bool
    @ViewBuilder let sheetContent: () -> SheetContent

    @State private var isFirstAppeared = false

    func body(content: Content) -> some View {
        content
            .task {
                guard !isFirstAppeared else { return }

                if isPresented {
                    try? await Task.sleep(for: .milliseconds(500))
                }
                isFirstAppeared = true
            }
            .sheet(isPresented: $isPresented <&& $isFirstAppeared) {
                sheetContent()
            }
    }
}

infix operator <&&: LogicalConjunctionPrecedence

extension Binding where Value == Bool {

    static func <&&(lhs: Binding, rhs: Binding) -> Binding {
        return .init(
            get: { lhs.wrappedValue && rhs.wrappedValue },
            set: { lhs.wrappedValue = $0 }
        )
    }
}

struct ContentView1: View {
    @SceneStorage("ContentView2") var isSheetPresented = false

    var body: some View {
        Button("ContentView1.\nOpen ContentView2") {
            isSheetPresented = true
        }
        .delayedSheet(isPresented: $isSheetPresented) {
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
        .delayedSheet(isPresented: $isSheetPresented) {
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
        .delayedSheet(isPresented: $isSheetPresented) {
            ContentView4()
        }
    }
}

struct ContentView4: View {
    var body: some View {
        Text("ContentView4")
    }
}

