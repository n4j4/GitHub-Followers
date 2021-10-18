//
//  GFFollowerItemVC.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 11.09.2021.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowersButton(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    
    init(user: User, delegate: GFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
        actionButton.set(backgroundColor: .systemPurple, title: "Get Followers")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowersButton(for: user)
    }
}
