//
//  CustomLoadingView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//
//  Tutorial 14
//  Passing data between views

import SwiftUI

struct CustomLoadingView: View {
    @Binding var isLoading: Bool
    
    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CustomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomLoadingView(isLoading: .constant(true))
            CustomLoadingView(isLoading: .constant(false))
        }
    }
}
