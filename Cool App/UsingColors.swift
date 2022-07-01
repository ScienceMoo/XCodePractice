//
//  Tutorial7.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 7

import SwiftUI

struct UsingColors: View {
    var body: some View {
        ZStack {
            Color("Primary")
                .ignoresSafeArea()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct UsingColors_Previews: PreviewProvider {
    static var previews: some View {
        UsingColors()
    }
}
