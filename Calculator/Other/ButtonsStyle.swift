//
//  ContentView+Extensions.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import SwiftUI

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
