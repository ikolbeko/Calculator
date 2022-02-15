//
//  Observe.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import Foundation

class Observe<Value> {
    typealias Observer = (Value) -> Void
    private var observer: Observer?

    func bind(_ observer: Observer?) {
        self.observer = observer
    }

    var value: Value {
        didSet {
            observer?(value)
        }
    }

    init(_ v: Value) {
        value = v
    }
}
