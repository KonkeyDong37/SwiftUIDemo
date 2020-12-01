//
//  ProductsResponse.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable {
    case courses = "Courses"
    case webinars = "Webinars"
}

struct ProductsResponse: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let shortName: String
    let category: Category
    let description: String
    let students: Int
    let lessons: Int
    let isFavorite: Bool
    let isFeatured: Bool
}
