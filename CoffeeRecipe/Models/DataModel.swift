//
//  UserModel.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-28.
//

import Foundation
import SwiftData

@Model
final class User {
    @Attribute(.unique)
    var id: UUID = UUID()
    var userId: String
    @Attribute(.allowsCloudEncryption)
    var userPw: String
    var iditializedDate: Date = Date()
    var email: String?
    var nickName: String
    @Relationship(deleteRule: .cascade, inverse: \CoffeeModel.user)
    var coffees: [CoffeeModel]? = []
    
    init(userId: String, userPw: String, email: String? = nil, nickName: String) {
        self.userId = userId
        self.userPw = userPw
        self.email = email
        self.nickName = nickName
    }
}

@Model
final class CoffeeModel {
    var id: UUID = UUID()
    var name: String
    var category: Category
    var user: User?
    
    init(name: String, category: Category) {
        self.name = name
        self.category = category
    }
}

enum Category: Int, Codable {
    case blending
    case singleOrigin
}
