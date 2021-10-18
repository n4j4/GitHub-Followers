//
//  GFRepoItemVC.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 11.09.2021.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfileButton(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
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
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemGreen, title: "GitHub Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfileButton(for: user)
    }
}
