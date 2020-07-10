//
//  ExpenseList.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import SwiftUI

struct ExpenseList: View {
    var expenses: [Expense]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true ) {
            LazyVStack {
                ForEach(expenses) { (expenseItem) in
                    ExpenseCell(expense: expenseItem)
                }
            }
        }
    }
}

struct ExpenseList_Previews: PreviewProvider {

    
    static var previews: some View {
        ExpenseList(expenses: [Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                               Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                               Expense(amount: 129.99, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                               Expense(amount: 69.69, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                               Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                               Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                               Expense(amount: 129.99, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                               Expense(amount: 69.69, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                               Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
                               Expense(amount: 9.99, store: "iTunes", cardType: Tender(name: "Apple Card", image: nil), category: ExpenseCategory(name: "Media"), person: "E", date: Date()),
                               Expense(amount: 129.99, store: "Liquor Store", cardType: Tender(name: "Reserved", image: nil), category: ExpenseCategory(name: "Vice"), person: "E", date: Date()),
                               Expense(amount: 69.69, store: "Farmers market", cardType: Tender(name: "Cash", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date())])
    }
}
