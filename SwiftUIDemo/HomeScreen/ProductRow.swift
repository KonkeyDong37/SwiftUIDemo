//
//  ProductRow.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import SwiftUI

struct ProductRow: View {
    
    let categoryName: String
    let items: [ProductsResponse]
    var itemHeight: CGFloat {
        switch categoryName {
        case "Webinars":
            return 190
        case "Courses":
            return 170
        default:
            return 0
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(self.categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items) { item in
                        NavigationLink(destination: DetailScreen(object: item)) {
                            ProductItem(object: item, height: itemHeight)
                        }
                    }
                }
            }.frame(height: itemHeight + 20)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, items: Array(materialResponse.prefix(3)))
    }
}
