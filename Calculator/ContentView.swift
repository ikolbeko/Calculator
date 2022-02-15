//
//  ContentView.swift
//  Calculator
//
//  Created by Илья Колбеко on 14.02.22.
//

import SwiftUI

let buttonSize = UIScreen.main.bounds.size.width / 4.5
let buttonFontSize: CGFloat = 30

struct ContentView: View {
    
    @State private var equation: String = "0"
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .trailing) {
                Text("\(equation)")
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .multilineTextAlignment(.trailing)
                HStack {
                    VStack {
                        HStack {
                            Button (action: {equation = "0"}, label: { Text("AC") })
                            Button (action: {}, label: { Image(systemName: "plus.forwardslash.minus") })
                            Button (action: {equation = percent(equation)}, label: { Image(systemName: "percent") })
                        }
                        .buttonStyle(SetButtonStule(buttonColor: .secondary, labelColor: .black))
                        HStack {
                            Button (action: {equation = addSymbol("7", to: equation)}, label: { Text("7") })
                            Button (action: {equation = addSymbol("8", to: equation)}, label: { Text("8") })
                            Button (action: {equation = addSymbol("9", to: equation)}, label: { Text("9") })
                        }
                        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
                        HStack {
                            Button (action: {equation = addSymbol("4", to: equation)}, label: { Text("4") })
                            Button (action: {equation = addSymbol("5", to: equation)}, label: { Text("5") })
                            Button (action: {equation = addSymbol("6", to: equation)}, label: { Text("6") })
                        }
                        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
                        HStack {
                            Button (action: {equation = addSymbol("1", to: equation)}, label: { Text("1") })
                            Button (action: {equation = addSymbol("2", to: equation)}, label: { Text("2") })
                            Button (action: {equation = addSymbol("3", to: equation)}, label: { Text("3") })
                        }
                        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
                        HStack {
                            Button (action: {equation = addSymbol("0", to: equation)}, label: { Text("0") })
                                .buttonStyle(SetZeroButtonStule())
                            Button (action: {equation = addSymbol(".", to: equation)}, label: { Text(",") })
                                .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
                        }
                    }
                    VStack {
                        Button (action: {equation = addSymbol("/", to: equation)}, label: { Image(systemName: "divide") })
                        Button (action: {equation = addSymbol("*", to: equation)}, label: { Image(systemName: "multiply") })
                        Button (action: {equation = addSymbol("-", to: equation)}, label: { Image(systemName: "minus") })
                        Button (action: {equation = addSymbol("+", to: equation)}, label: { Image(systemName: "plus") })
                        Button (action: {equation = calculating(equation)}, label: { Image(systemName: "equal") })
                    }
                    .buttonStyle(SetButtonStule(buttonColor: .orange, labelColor: .white))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
