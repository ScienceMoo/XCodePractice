//
//  Tutorial11.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 11

import SwiftUI

struct HowToLayout: View {
    var body: some View {
        Image("cat")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(alignment: .bottomTrailing) {
                Text("le chris")
                    .foregroundColor(.white)
                    .bold()
                    .font(.caption)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 4)
                    .background(.red)
                    .clipShape(Capsule())
                    .offset(x: -20, y: 20)
            }
        
    }
}

struct HowToLayout_Previews: PreviewProvider {
    static var previews: some View {
        HowToLayout()
    }
}
