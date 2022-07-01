//
//  ContentView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun")
                .font(.system(size: 50, weight: .bold))
                .foregroundColor(.red)
                .symbolVariant(.fill)

            VStack {
                Label("Cloud #1", systemImage: "cloud.sun")
                    .imageScale(.large)
                Label("Cloud #2", systemImage: "cloud.sun")
                Label("Cloud #3", systemImage: "cloud.sun")
                    .imageScale(.small)
            }
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.blue)
            
            Text("My name is moo")
                .padding()
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                .foregroundColor(.green)
                .background(Color.black)
                .cornerRadius(10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
