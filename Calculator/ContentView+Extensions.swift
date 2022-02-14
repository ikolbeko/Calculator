//
//  ContentView+Extensions.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import SwiftUI

extension ContentView {
    
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
