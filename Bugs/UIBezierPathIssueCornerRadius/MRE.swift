//
//  MRE.swift
//
//  Created by VAndrJ on 2/18/25.
//

import UIKit

/// UIBezierPath issue: `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.
class ViewController: UIViewController {
    private let examplePathCornerLayer = CAShapeLayer()
    private let exampleCornerLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        let edge = 200.0
        let halfEdge = edge / 2
        let size = CGSize(width: halfEdge * 2, height: halfEdge * 2)
        examplePathCornerLayer.fillColor = UIColor.magenta.cgColor
        examplePathCornerLayer.frame = .init(origin: .init(x: 64, y: 64), size: size)
        view.layer.addSublayer(examplePathCornerLayer)
        exampleCornerLayer.backgroundColor = UIColor.green.cgColor
        exampleCornerLayer.frame = .init(origin: .init(x: 64, y: 64 + edge), size: size)
        view.layer.addSublayer(exampleCornerLayer)

        let cornerRadius = halfEdge * 0.7
        examplePathCornerLayer.path = UIBezierPath(
            roundedRect: examplePathCornerLayer.bounds,
            cornerRadius: cornerRadius
        ).cgPath
        exampleCornerLayer.cornerRadius = cornerRadius
    }
}
