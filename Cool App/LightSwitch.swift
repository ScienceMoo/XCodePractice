//
//  Tutorial12.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//
//  Tutorial 12
//  controlled state

import SwiftUI

struct LightSwitch: View {
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundColor(isOn ? .yellow : .black)
            
            Toggle(isOn : $isOn) {
                Text("Toggle Light Switch")
            }
            .labelsHidden()
        }
    }
}

struct LightSwitch_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitch()
    }
}
