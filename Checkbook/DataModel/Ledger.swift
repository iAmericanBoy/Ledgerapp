//
//  Ledger.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import Foundation

struct Ledger {
    var name: String
    var tender: [Tender]
    var categories: [ExpenseCategory]
    var expenses: [Expense]
}
