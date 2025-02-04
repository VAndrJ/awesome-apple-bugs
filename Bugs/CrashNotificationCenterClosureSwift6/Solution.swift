//
//  AppDelegate.swift
//  MRE
//
//  Created by VAndrJ on 2/4/25.
//

import UIKit

/// Solution / Workaround.
/// Crash in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let options: UNAuthorizationOptions = [UNAuthorizationOptions.alert, .badge, .sound]
        /// Solution / Workaround
        UNUserNotificationCenter.current().requestAuthorization(options: options) { @Sendable _, _ in }

        // or:
        Task {
            do {
                let _ = try await UNUserNotificationCenter.current().requestAuthorization(options: options)
            } catch {
            }
        }

        return true
    }
}

