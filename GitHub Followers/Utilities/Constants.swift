//
//  Constants.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 08.09.2021.
//

import UIKit

enum SFSymbols {
    static let location = UIImage(systemName: "mappin.and.ellipse")
    static let repos = UIImage(systemName: "folder.circle")
    static let gists = UIImage(systemName: "text.alignleft")
    static let followers = UIImage(systemName: "heart.circle")
    static let following = UIImage(systemName: "person.3")
}


enum Images {
    static let placeholder = UIImage(named: "avatar-placeholder")
    static let emptyStateLogo = UIImage(named: "empty-state-logo")
    static let logo = UIImage(named: "gh-logo")
}


enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.maxLength)
}


enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale
    
    static let isiPhoneSE = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhone11Pro = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhone11ProMaxAndXr = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    
    static func isiPhone11ProAspectRatio() -> Bool {
        
        return isiPhone11Pro || isiPhone11ProMaxAndXr
    }
}
