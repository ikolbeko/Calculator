//
//  ViewModel.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import Foundation

class ViewModel {
    
    var equation = Observe("0")
    
    func addSymbol(_ symbol: String) {
        
        switch equation.value + symbol {
        case "0+", "0/", "0*", "0-":
            equation.value = "0"
        case "00", "01", "02", "03", "04", "05", "06", "07", "08", "09":
            equation.value = symbol
        default:
            equation.value += symbol
        }
    }
    
    func calculating() {
        let expr = NSExpression(format: equation.value)
        if let result = expr.expressionValue(with: nil, context: nil) as? NSNumber {
            equation.value = "\(result.doubleValue)"
        } else {
            equation.value = "0"
        }
    }
    
    func percent() {
        let expr = NSExpression(format: equation.value + "/100")
        if let result = expr.expressionValue(with: nil, context: nil) as? NSNumber {
            equation.value = "\(result.doubleValue)"
        } else {
            equation.value = "0"
        }
    }
    
}
