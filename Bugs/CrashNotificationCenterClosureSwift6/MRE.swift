//
//  AppDelegate.swift
//  MRE
//
//  Created by VAndrJ on 2/4/25.
//

import UIKit

/// Crash in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let options: UNAuthorizationOptions = [UNAuthorizationOptions.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { _, _ in }

        return true
    }
}
