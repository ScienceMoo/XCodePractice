//
//  PurchaseView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//
//  Tutorial 16

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var purchaseVm: PurchaseViewModel
    
    var body: some View {
        if purchaseVm.isLoading {
            ProgressView()
        } else {
            Button{
                purchaseVm.purchase()
            } label: {
                Text("Purchase Me")
            }
            .disabled(purchaseVm.hasPurchased)
            .opacity(purchaseVm.hasPurchased ? 0.5 : 1)
        }
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
            .environmentObject(PurchaseViewModel())
    }
}
