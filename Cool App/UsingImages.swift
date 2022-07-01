//
//  Tutorial5.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 5
//  using images

import SwiftUI

struct UsingImages: View {
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 300,
                   height: 300)
        
    }
}

struct UsingImages_Previews: PreviewProvider {
    static var previews: some View {
        UsingImages()
    }
}
