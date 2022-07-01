//
//  PurchaseStatusView.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//

import SwiftUI

struct PurchaseStatusView: View {
    
    @EnvironmentObject var purchaseVm: PurchaseViewModel
    
    var body: some View {
        VStack {
            Image(systemName: purchaseVm.hasPurchased ? "lock.open" : "lock")
                .font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
            Text("The user \(purchaseVm.hasPurchased ? "has" : "hasn't") unlocked this feature" )
        }
    }
}

struct PurchaseStatusView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStatusView()
            .environmentObject(PurchaseViewModel())
    }
}
