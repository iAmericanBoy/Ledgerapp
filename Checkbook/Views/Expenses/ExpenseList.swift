//
//  ExpenseList.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import SwiftUI

struct ExpenseList: View {
    @Binding var expenses: [Expense]
    var delete: ((IndexSet) -> Void)
    
    var body: some View {
        List {
            ForEach(expenses) { (expenseItem) in
                ExpenseCell(expense: expenseItem)
            }
            .onDelete(perform: delete)
        }
    }
}

struct ExpenseList_Previews: PreviewProvider {
    struct DesignExpenseList: View {
        @State private var expenses = [Expense(amount: 36.47, store: "Trader Joes", cardType: Tender(name: "Gold", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()),
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
        var body: some View {
            ExpenseList(expenses: $expenses) { (indexSet) in
                expenses.remove(atOffsets: indexSet)
            }
        }
    }

    static var previews: some View {
        DesignExpenseList()
    }
}
