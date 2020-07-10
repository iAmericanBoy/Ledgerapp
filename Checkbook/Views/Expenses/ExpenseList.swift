//
//  ExpenseList.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import SwiftUI

struct ExpenseList: View {
    @ObservedObject var viewModel = ExpenseListViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true ) {
            LazyVStack {
                ForEach(viewModel.expenses) { (expenseItem) in
                    ExpenseCell(expense: expenseItem)
                }
            }
        }
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseList(viewModel: ExpenseListViewModel())
    }
}
