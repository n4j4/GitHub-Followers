//
//  GFDataLoadingVC.swift
//  GitHub Followers
//
//  Created by on 01.10.2021.
//

import UIKit

class GFDataLoadingVC: UIViewController {
    
    var spinnerView: UIView!

    
    func showLoadingView() {
        spinnerView = UIView(frame: view.bounds)
        view.addSubview(spinnerView)
        
        spinnerView.backgroundColor = .systemBackground
        spinnerView.alpha = 0
        
        UIView.animate(withDuration: 0.2) { self.spinnerView.alpha = 0.8 }
        
        let spinner = UIActivityIndicatorView(style: .large)
        spinnerView.addSubview(spinner)
        
        spinner.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            spinner.centerYAnchor.constraint(equalTo: spinnerView.centerYAnchor),
            spinner.centerXAnchor.constraint(equalTo: spinnerView.centerXAnchor)
        ])
        
        spinner.startAnimating()
    }
    
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.spinnerView.removeFromSuperview()
            self.spinnerView = nil
        }
    }
    
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
