//
//  ExpenseListViewModel.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/10/20.
//

import Foundation

class ExpenseListViewModel: ObservableObject {
    // MARK: Publishers
    
    @Published private var model: [Expense] = []
        
    // MARK: Init
    init() {
        createModel()
    }
    
    // MARK: Access
    var expenses: [Expense] {
        return model
    }
    
    
    // MARK: Private functions
    private func createModel() {
        model = [Expense(amount: 36.47, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                 Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                 Expense(amount: 62.53, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                 Expense(amount: 21.25, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                 Expense(amount: 36.47, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                 Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                 Expense(amount: 62.53, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                 Expense(amount: 21.25, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                 Expense(amount: 36.47, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                 Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                 Expense(amount: 62.53, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                 Expense(amount: 21.25, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date())]
    }
}
