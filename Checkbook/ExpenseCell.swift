//
//  ExpenseCell.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/10/20.
//

import SwiftUI

struct ExpenseCell: View {
    var expense: Expense
    
    var body: some View {
        VStack {
            HStack {
                Text(expense.date.description)
                Spacer()
                Text(expense.cardType.name).foregroundColor(Color.gray)
            }
            .padding(.bottom, 10)
            HStack {
                Text(expense.store)
                Spacer()
                Text("$ \(expense.amount.description)")
            }
            HStack {
                Tag(text: expense.person, color: Color.gray.opacity(0.5))
                Tag(text: expense.category.name, color: Color.orange.opacity(0.5))
                Spacer()
            }
            .padding(.all, 5)
        }
        .padding(.horizontal, 10)
        .padding(.top,5)
        .background(Color.blue.opacity(0.05))
        .border(Color.blue, width: 0.5)
    }
}

struct ExpenseCell_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCell(expense: Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "AMEX", image: nil), category: ExpenseCategory(name: "Grocerys"), person: "D", date: Date()))
    }
}




