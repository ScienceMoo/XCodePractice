//
//  Tutorial10.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 10

import SwiftUI

struct Borders: View {
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(colors: [.red,
                                                                .yellow,
                                                                .red]),
                                    center: .center,
                                    endAngle: .degrees(300)),
                    lineWidth: 50
                )
            .padding()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black, lineWidth: 5)
                )
        }

    }
}

struct Borders_Previews: PreviewProvider {
    static var previews: some View {
        Borders()
    }
}
