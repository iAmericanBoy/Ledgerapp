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
        List {
            ForEach(viewModel.expenses) { (expenseItem) in
                ExpenseCell(expense: expenseItem)
            }
            .onDelete(perform: deleteRow(_ :))
        }
    }
    
    private func deleteRow(_ indexSet:IndexSet) {
        viewModel.delete(indexSet)
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseList(viewModel: ExpenseListViewModel())
    }
}
