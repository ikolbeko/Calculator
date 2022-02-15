//
//  ContentView.swift
//  Calculator
//
//  Created by Илья Колбеко on 14.02.22.
//

import SwiftUI

let buttonSize = UIScreen.main.bounds.size.width / 4.5
let buttonFontSize: CGFloat = 30
var viewModel = ViewModel()

struct ContentView: View {
    
    @State private var equation: String = "0"
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .trailing) {
                Text(equation)
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .multilineTextAlignment(.trailing)
                HStack {
                    VStack {
                        LightGrayButton(viewModel: viewModel)
                        NumberButtons(viewModel: viewModel)
                    }
                    OrangeButton(viewModel: viewModel)
                }
            }
        }.onAppear(perform: bindViewModel)
    }
}

extension ContentView {
    
    func bindViewModel() {
        viewModel.equation.bind { Data in
            self.equation = Data
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
