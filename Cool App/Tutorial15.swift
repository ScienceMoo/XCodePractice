//
//  Tutorial15.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//
//  Tutorial 15

import SwiftUI

struct Tutorial15: View {
    
    @StateObject private var vm = PeopleViewModel()
    
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
                Text("Loading...")
                    .padding()
            } else {
                Text(vm.people.isEmpty ? "No Users" : "Managed to get \(vm.people.count) users")
            }
            Button(action: vm.fetchPeople) {
                Text("Fetch some people")
            }
        }
    }
}

struct Tutorial15_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial15()
    }
}
