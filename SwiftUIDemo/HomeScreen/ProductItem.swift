//
//  ProductItem.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import SwiftUI

struct ProductItem: View {
    
    let object: ProductsResponse
    let height: CGFloat
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .frame(width: 170, height: height)
                .cornerRadius(10)
        }.padding(.leading, 15)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[0], height: 170)
    }
}
