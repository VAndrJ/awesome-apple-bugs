//
//  SceneDelegate.swift
//  MRE
//
//  Created by VAndrJ on 2/3/25.
//

import UIKit

/// Solution / Workaround.
/// Navigation title is displayed in quotation marks `" "` if a whitespace is specified as the title.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: scene)
        let navController = UINavigationController(rootViewController: FirstController())
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}

final class FirstController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Solution / Workaround
        title = nil

        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.addAction(
            UIAction(handler: { [weak self] _ in
                self?.navigationController?.pushViewController(SecondController(), animated: true)
            }),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            button.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
}

final class SecondController: BaseViewController {}

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
    }
}

