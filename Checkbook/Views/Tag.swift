//
//  Tag.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/10/20.
//

import SwiftUI

struct Tag: View {
    var text: String
    var color: Color

    var body: some View {
        ZStack {
            Text(text)
                .padding(.horizontal, 5)
                .background(color)
                .cornerRadius(10)
        }
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(text: "GROCERY", color: .blue)
    }
}
