//
//  Buttons.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import SwiftUI

struct NumberButtons: View {
    
    var viewModel: ViewModel
    var body: some View {
        HStack {
            Button (action: { viewModel.addSymbol("7") }, label: { Text("7") })
            Button (action: { viewModel.addSymbol("8") }, label: { Text("8") })
            Button (action: { viewModel.addSymbol("9") }, label: { Text("9") })
        }
        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
        HStack {
            Button (action: { viewModel.addSymbol("4") }, label: { Text("4") })
            Button (action: { viewModel.addSymbol("5") }, label: { Text("5") })
            Button (action: { viewModel.addSymbol("6") }, label: { Text("6") })
        }
        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
        HStack {
            Button (action: { viewModel.addSymbol("1") }, label: { Text("1") })
            Button (action: { viewModel.addSymbol("2") }, label: { Text("2") })
            Button (action: { viewModel.addSymbol("3") }, label: { Text("3") })
        }
        .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
        HStack {
            Button (action: { viewModel.addSymbol("0") }, label: { Text("0") })
                .buttonStyle(SetZeroButtonStule())
            Button (action: { viewModel.addSymbol(".") }, label: { Text(",") })
                .buttonStyle(SetButtonStule(buttonColor: .gray, labelColor: .white))
        }
    }
}

//struct Buttons_Previews: PreviewProvider {
//    static var previews: some View {
//        NumberButtons()
//    }
//}
