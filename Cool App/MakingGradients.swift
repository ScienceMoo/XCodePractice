//
//  Tutorial8.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 8

import SwiftUI

struct MakingGradients: View {
    var body: some View {
        ZStack {
            AngularGradient(colors: [.black, .green, .white],
                            center: .center)
            .ignoresSafeArea()
            
            Image(systemName: "heart")
            .font(.system(size: 80, weight: .bold))
        }
    }
}

struct MakingGradients_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MakingGradients()
            RainbowText()
        }
    }
}
