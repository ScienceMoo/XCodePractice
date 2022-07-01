//
//  Tutorial8.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 8

import SwiftUI

struct RainbowText: View {
    var body: some View {
        ZStack {
            AngularGradient(colors: [.black, .green, .white],
                            center: .center)
            .mask {
                Image(systemName: "heart")
                .font(.system(size: 80, weight: .bold))

                Text("Leaflet")
                    .font(.system(size: 30, weight: .bold))
            }
        }
    }
}

struct RainbowText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RainbowText()
            MakingGradients()
        }
    }
}
