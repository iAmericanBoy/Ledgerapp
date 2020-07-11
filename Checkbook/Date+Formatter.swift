//
//  Date+Formatter.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/10/20.
//

import Foundation

extension Date {
    var formatted: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.autoupdatingCurrent
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: self)
    }
}
