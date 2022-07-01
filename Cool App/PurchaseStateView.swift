//
//  PurchaseStateView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//
//  Tutorial 16

import SwiftUI

struct PurchaseStateView: View {
    @EnvironmentObject var purchaseVm: PurchaseViewModel
    
    var body: some View {
        PurchaseStatusView()
    }
}

struct PurchaseStateView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStateView()
            .environmentObject(PurchaseViewModel())
    }
}
