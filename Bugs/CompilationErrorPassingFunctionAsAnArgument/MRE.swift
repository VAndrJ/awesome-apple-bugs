//
//  MRE.swift
//
//  Created by VAndrJ on 2/3/25.
//

import UIKit

/// Compilation error when passing a function isolated to an actor as an argument.
extension UIView {

    func addAutolayoutSubview(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }

    func addAutolayoutSubviews(_ subviews: UIView...) {
        subviews.forEach(addAutolayoutSubview(_:))
    }
}
