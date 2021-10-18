//
//  User.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 30.07.2021.
//

import Foundation

struct User: Codable {
    public let login: String
    public let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}
