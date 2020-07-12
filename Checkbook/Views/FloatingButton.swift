//
//  FloatingButton.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/11/20.
//

import SwiftUI

struct FloatingButton: View {
    var onTap: () -> Void

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: onTap) {
                    Text("+")
                        .font(.system(.largeTitle))
                        .frame(width: 77, height: 70)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 7)
                }
                .background(Color.blue)
                .cornerRadius(38.5)
                .padding()
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
            }
        }
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static func action() {}

    static var previews: some View {
        FloatingButton(onTap: action)
            .previewLayout(.sizeThatFits)
    }
}
