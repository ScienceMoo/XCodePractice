//
//  Tutorial6.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 6
//  Color theme

import SwiftUI

struct UsingColorTheme: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Primary"))
    }
}

struct UsingColorTheme_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UsingColorTheme()
            UsingColorTheme()
                .preferredColorScheme(.dark)
        }
    }
}
