//
//  Expense.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import Foundation

struct Expense: Identifiable {
    var id: UUID = UUID()
    var amount: Decimal
    var store: String
    var cardType: Tender
    var category: ExpenseCategory
    var person: String
    var date: Date
}
