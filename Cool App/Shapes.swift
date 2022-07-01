//
//  Tutorial9.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 9

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Capsule(style: .circular)
                .fill(.blue)
                .frame(width: 100,
                       height: 50)
            
            Capsule(style: .continuous)
                .frame(width: 100,
                       height: 50)
            
            Circle()
                .frame(width: 25,
                       height: 50)
            
            Ellipse()
                .frame(width: 50,
                       height: 25)
            
            Rectangle()
                .frame(width: 50,
                       height: 50)
            
            Image("me")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
        }
        .padding()
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
