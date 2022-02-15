//
//  OperationButton.swift
//  Calculator
//
//  Created by Илья Колбеко on 15.02.22.
//

import SwiftUI

struct LightGrayButton: View {
    
    var viewModel: ViewModel
    var body: some View {
        HStack {
            Button (action: { viewModel.equation.value = "0" }, label: { Text("AC") })
            Button (action: {}, label: { Image(systemName: "plus.forwardslash.minus") })
            Button (action: { viewModel.percent() }, label: { Image(systemName: "percent") })
        }
        .buttonStyle(SetButtonStule(buttonColor: .secondary, labelColor: .black))
    }
}

struct OrangeButton: View {
    
    var viewModel: ViewModel
    var body: some View {
        VStack {
            Button (action: { viewModel.addSymbol("/") }, label: { Image(systemName: "divide") })
            Button (action: { viewModel.addSymbol("*") }, label: { Image(systemName: "multiply") })
            Button (action: { viewModel.addSymbol("-") }, label: { Image(systemName: "minus") })
            Button (action: { viewModel.addSymbol("+") }, label: { Image(systemName: "plus") })
            Button (action: { viewModel.calculating() }, label: { Image(systemName: "equal") })
        }
        .buttonStyle(SetButtonStule(buttonColor: .orange, labelColor: .white))
    }
}

//struct OperationButton_Previews: PreviewProvider {
//    static var previews: some View {
//        LightGrayButton()
//    }
//}
