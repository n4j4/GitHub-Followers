//
//  GFItemInfoView.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 09.09.2021.
//

import UIKit

enum ItemInfoType {
    case repos, gists, followers, following
}

class GFItemInfoView: UIView {
    
    let itemImageView = UIImageView()
    let itemTitleLabel = GFTitleLabel(textAlignment: .left, fontSize: 14)
    let itemCountLabel = GFTitleLabel(textAlignment: .center, fontSize: 14)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubviews(itemImageView, itemTitleLabel, itemCountLabel)
        
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.contentMode = .scaleAspectFill
        itemImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            itemImageView.topAnchor.constraint(equalTo: self.topAnchor),
            itemImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            itemImageView.widthAnchor.constraint(equalToConstant: 20),
            itemImageView.heightAnchor.constraint(equalToConstant: 20),
            
            itemTitleLabel.centerYAnchor.constraint(equalTo: itemImageView.centerYAnchor),
            itemTitleLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 12),
            itemTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            itemTitleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            itemCountLabel.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 4),
            itemCountLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            itemCountLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            itemCountLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    
    func set(itemInfoType: ItemInfoType, with count: Int) {
        switch itemInfoType {
        case .repos:
            itemImageView.image = SFSymbols.repos
            itemTitleLabel.text = "Public Repos"
        case .gists:
            itemImageView.image = SFSymbols.gists
            itemTitleLabel.text = "Public Gists"
        case .followers:
            itemImageView.image = SFSymbols.followers
            itemTitleLabel.text = "Followers"
        case .following:
            itemImageView.image = SFSymbols.following
            itemTitleLabel.text = "Following"
        }
        
        itemCountLabel.text = String(count)
    }
}
