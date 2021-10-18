//
//  Date+Ext.swift
//  GitHub Followers
//
//  Created By Dmitry Smirnov on 11.09.2021.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
    
}
