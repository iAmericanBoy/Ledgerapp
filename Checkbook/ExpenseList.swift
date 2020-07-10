//
//  ExpenseList.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/7/20.
//

import SwiftUI

struct ExpenseList: View {
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
        .background(Color.blue.opacity(0.05))
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExpenseList()
        }
            
            
    }
}
