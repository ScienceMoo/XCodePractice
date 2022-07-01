//
//  Cool_AppApp.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-28.
//

import SwiftUI

@main
struct Cool_AppApp: App {
    
    @StateObject private var vm = PurchaseViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                PurchaseView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Purchase")
                    }
                PurchaseStateView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("State")
                    }
            }
        }
    }
}
