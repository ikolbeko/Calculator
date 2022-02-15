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
    
    struct ButtonStuleLightGray: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .frame(width: buttonSize, height: buttonSize, alignment: .center)
                .background(Color(#colorLiteral(red: 0.6784, green: 0.698, blue: 0.6824, alpha: 1)))
                .foregroundColor(.black)
                .clipShape(Circle())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
    struct ButtonStuleOrange: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .frame(width: buttonSize, height: buttonSize, alignment: .center)
                .background(Color.orange)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
    struct ButtonStuleDarkGray: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .frame(width: buttonSize, height: buttonSize, alignment: .center)
                .background(Color.secondary)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
    struct ZeroButtonStule: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .frame(width: buttonSize, height: buttonSize, alignment: .center)
                .foregroundColor(.white)
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .font(.system(size: buttonFontSize))
        }
    }
}
