//
//  Tutorial14.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-29.
//
//  Tutorial 14
//  Passing data between views

import SwiftUI

struct PassingDownData: View {
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            CustomLoadingView(isLoading: $isLoading)
            Button {
                isLoading.toggle()
            } label: {
                Text("\(isLoading ? "Stop" : "Start") Loading")
            }
            .padding()
            .cornerRadius(10)
            .foregroundColor(Color.accentColor)
        }
    }
}

struct PassingDownData_Previews: PreviewProvider {
    static var previews: some View {
        PassingDownData()
    }
}
