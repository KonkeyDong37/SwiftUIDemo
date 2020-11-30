//
//  UserResponse.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage : String
    var email: String
    var likes: String
    var text: String
}
