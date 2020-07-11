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
                Text(expense.date.formatted)
                    .font(.callout)
                Spacer()
                Text(expense.cardType.name).font(.footnote).foregroundColor(Color.gray)
            }
            HStack {
                Text(expense.store)
                    .font(.title2)
                Spacer()
                Text("$ \(expense.amount.description)")
                    .font(.title)
            }
            HStack {
                Tag(text: expense.person, color: Color.gray.opacity(0.4))
                Tag(text: expense.category.name, color: Color.orange.opacity(0.4))
                Spacer()
            }
            .padding(.all, 5)
        }
        .padding(.horizontal, 10)
        .padding(.top, 5)
    }
}

struct ExpenseCell_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCell(expense: Expense(amount: 69.69, store: "Trader Joes", cardType: Tender(name: "AMEX", image: nil), category: ExpenseCategory(name: "Grocery"), person: "D", date: Date()))
            .previewLayout(.sizeThatFits)
    }
}
