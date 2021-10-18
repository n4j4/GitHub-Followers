//
//  GFEmptyStateView.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 30.08.2021.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    
    private func configure() {
        addSubviews(messageLabel, logoImageView)
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    private func configureMessageLabel() {
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        let labelCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : -150
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: labelCenterYConstant),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    private func configureLogoImageView() {
        logoImageView.image = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 80 : 35

        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: 420),
            logoImageView.heightAnchor.constraint(equalToConstant: 420),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 175),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoBottomConstant)
        ])
    }
}
