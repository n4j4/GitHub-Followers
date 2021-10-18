//
//  Follower.swift
//  GitHub Followers
//
//  Created by Dmitry Smirnov on 30.07.2021.
//

import Foundation

struct Follower: Codable, Hashable {
    public let login: String
    public let avatarUrl: String
}
