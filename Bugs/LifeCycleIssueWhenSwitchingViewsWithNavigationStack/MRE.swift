//
//  MRE.swift
//
//  Created by VAndrJ on 4/28/25.
//

import SwiftUI
import Observation

@Observable
final class AuthService {
    var isLogined = false
}

struct ContentView: View {
    @State private var authService = AuthService()

    var body: some View {
        if authService.isLogined {
            MainScreen()
        } else {
            GreetingScreen()
                .environment(authService)
        }
    }
}

struct GreetingScreen: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to login screen", value: 1)
                .navigationDestination(for: Int.self) { _ in
                    LoginScreen()
                }
        }
    }
}

struct LoginScreen: View {
    @Environment(AuthService.self) private var authService

    var body: some View {
        Button("Login") {
            authService.isLogined = true
        }
        .onAppear {
            print(Self.self, "onAppear")
        }
        .task {
            print(Self.self, "task")
        }
        .onDisappear {
            print(Self.self, "onDisappear")
        }
    }
}

struct MainScreen: View {
    var body: some View {
        Text("Logined")
            .font(.largeTitle)
            .bold()
    }
}
