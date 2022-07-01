//
//  PurchaseViewModel.swift
//  Cool App
//
//  Created by Cornellier, Marie on 2022-06-30.
//
//  Tutorial 16

import Foundation

final class PurchaseViewModel: ObservableObject {
    @Published var hasPurchased: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.isLoading = false
            self?.hasPurchased = true
        }
    }
}
