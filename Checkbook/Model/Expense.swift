//
//  Expense.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import Foundation

struct Expense {
    var name: String
    var amount: Decimal
    var store: String
    var category: ExpenseCategory
    var person: String
    var date: Date
}
