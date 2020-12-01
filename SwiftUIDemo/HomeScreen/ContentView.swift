//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String : [ProductsResponse]] {
        .init(grouping: materialResponse, by: { $0.category.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List {
                Cell(user: swiftbook)
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    
                    ProductRow(categoryName: key, items: self.categories[key]!)
                    
                }.listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                NavigationLink(destination: FriendsList()) {
                    Text("Наши преподаватели")
                }
            }
            .navigationBarTitle(Text("Home page"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
