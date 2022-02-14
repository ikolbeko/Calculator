//
//  ContentView.swift
//  Calculator
//
//  Created by Илья Колбеко on 14.02.22.
//

import SwiftUI

let buttonSize = UIScreen.main.bounds.size.width / 4.5
let buttonColorLigthGray = Color.secondary
let buttonFontSize: CGFloat = 30

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .ignoresSafeArea()
            HStack {
                VStack {
                    HStack {
                        Button (action: {}, label: { Text("AC") })
                        Button (action: {}, label: { Image(systemName: "plus.forwardslash.minus") })
                        Button (action: {}, label: { Image(systemName: "percent") })
                    }
                    .buttonStyle(ButtonStuleLightGray())
                    HStack {
                        Button (action: {}, label: { Text("7") })
                        Button (action: {}, label: { Text("8") })
                        Button (action: {}, label: { Text("9") })
                    }
                    .buttonStyle(ButtonStuleDarkGray())
                    HStack {
                        Button (action: {}, label: { Text("4") })
                        Button (action: {}, label: { Text("5") })
                        Button (action: {}, label: { Text("6") })
                    }
                    .buttonStyle(ButtonStuleDarkGray())
                    HStack {
                        Button (action: {}, label: { Text("1") })
                        Button (action: {}, label: { Text("2") })
                        Button (action: {}, label: { Text("3") })
                    }
                    .buttonStyle(ButtonStuleDarkGray())
                    HStack {
                        Button (action: {}, label: { Text("0") })
                            .buttonStyle(ZeroButtonStule())
                            .frame(width: buttonSize * 2, height: buttonSize, alignment: .leading)
                            .background(Color.secondary)
                            .clipShape(Capsule())
                        Button (action: {}, label: { Text(",") })
                            .buttonStyle(ButtonStuleDarkGray())
                    }
                }
                VStack {
                    Button (action: {}, label: { Image(systemName: "divide") })
                    Button (action: {}, label: { Image(systemName: "multiply") })
                    Button (action: {}, label: { Image(systemName: "minus") })
                    Button (action: {}, label: { Image(systemName: "plus") })
                    Button (action: {}, label: { Image(systemName: "equal") })
                }
                .buttonStyle(ButtonStuleOrange())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
