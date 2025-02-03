//
//  SceneDelegate.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import UIKit

/// The life cycle of controllers when one is immediately pushed with `animation: true`
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: scene)
        let navController = UINavigationController(rootViewController: RootViewController())
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        navController.pushViewController(
            PushedViewController(),
            animated: true
        )
    }
}

class RootViewController: BaseViewController {}
class PushedViewController: BaseViewController {}

class BaseViewController: UIViewController {

    override func loadView() {
        super.loadView()

        print("\(Self.self)", #function)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("\(Self.self)", #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("\(Self.self)", #function)
    }

    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)

        print("\(Self.self)", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("\(Self.self)", #function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("\(Self.self)", #function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        print("\(Self.self)", #function)
    }
}
