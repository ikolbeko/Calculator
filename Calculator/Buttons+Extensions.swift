//
//  ContentView+Extensions.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import SwiftUI
import Foundation

extension ContentView {
    
    
    func addSymbol(_ symbol: String, to equation: String) -> String {        
        switch equation + symbol {
        case "0+", "0/", "0*", "0-":
            return "0"
        case "00", "01", "02", "03", "04", "05", "06", "07", "08", "09":
            return symbol
        default:
            return equation + symbol
        }
    }
    
    func calculating(_ equation: String) -> String{
        let expr = NSExpression(format: equation)
        if let result = expr.expressionValue(with: nil, context: nil) as? NSNumber {
            return "\(result.doubleValue)"
        } else {
            return "0"
        }
    }
    
    func percent(_ equation: String) -> String{
        let expr = NSExpression(format: equation + "/100")
        if let result = expr.expressionValue(with: nil, context: nil) as? NSNumber {
            return "\(result.doubleValue)"
        } else {
            return "0"
        }
    }
    
    struct SetButtonStule: ButtonStyle {
        
        var buttonColor: Color
        var labelColor: Color
        var buttonClipShape = Circle()
        
        func makeBody(configuration: Configuration) -> some View {
            
            configuration.label
                .padding()
                .frame(width: buttonSize, height: buttonSize, alignment: .center)
                .background(buttonColor)
                .foregroundColor(labelColor)
                .clipShape(buttonClipShape)
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
    
    struct SetZeroButtonStule: ButtonStyle {
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(30)
                .frame(width: buttonSize * 2, height: buttonSize, alignment: .leading)
                .background(.gray)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
}
