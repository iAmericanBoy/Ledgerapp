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
        Group {
            let expense = Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "AMEX", image: nil), category: ExpenseCategory(name: "Grocerys"), person: "D", date: Date())
            ExpenseList(expenses: [expense,expense,expense,expense])
        }
    }
}
