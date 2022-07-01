//
//  MyOtherView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-28.
//
//  Tutorial 4

import SwiftUI

struct SymbolRenderingMode: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun.rain")
                .symbolRenderingMode(.hierarchical)
            
            Image(systemName: "cloud.sun.rain")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .green, .yellow)
            
            Image(systemName: "cloud.sun.rain")
                .symbolRenderingMode(.multicolor)
            
            Image(systemName: "cloud.sun.rain")
                .symbolRenderingMode(.monochrome)
        }
        .padding()
        .background(.blue)
        .font(.system(size: 20, weight: .bold))
        .cornerRadius(10)
        .foregroundColor(.white)
        .symbolVariant(.fill)
    }
}

struct SymbolRenderingMode_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRenderingMode()
    }
}
