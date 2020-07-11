//
//  Container.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/11/20.
//

import SwiftUI

struct Container: View {
    @ObservedObject var viewModel = ContainerViewModel()
    
    var body: some View {
        ExpenseList(expenses: $viewModel.expenses, delete: viewModel.delete(_:))
    }
}

struct Container_Previews: PreviewProvider {
    static var previews: some View {
        Container()
    }
}
