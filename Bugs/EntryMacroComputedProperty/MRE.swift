//
//  MRE.swift
//
//  Created by VAndrJ on 2/5/25.
//

import SwiftUI

protocol SomeProtocol {}

class SomeClass: SomeProtocol {}

extension EnvironmentValues {
    @Entry var someValue: SomeProtocol = SomeClass()
    @Entry var someValue1 = SomeClass()

    @Entry var someNum: Int = 42
    @Entry var someNum1 = 42
}
