//
//  ExpenseList.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import SwiftUI

struct ExpenseList: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true ) {
            LazyVStack {
                ForEach(0 ..< 100) { item in
                    ExpenseCell()
                }
            }
        }
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExpenseList()
        }
    }
}

struct ExpenseCell: View {
    var body: some View {
        VStack {
            HStack {
                Text("07/10/2020")
                Spacer()
                Text("AMEX").foregroundColor(Color.gray)
            }
            .padding(.bottom, 10)
            HStack {
                Text("Trader Joes")
                Spacer()
                Text("$ 69.69")
            }
            HStack {
                Text("D")
                Text("Grocery")
            }
            .padding(.all, 5)
        }
        .padding(.horizontal, 10)
        .padding(.top,5)
        .background(Color.blue.opacity(0.05))
        .border(Color.blue, width: 0.5)
    }
}
