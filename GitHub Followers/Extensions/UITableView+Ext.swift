//
//  UITableView+Ext.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 06.10.2021.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() { // don't use that in this project, but helpful
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
