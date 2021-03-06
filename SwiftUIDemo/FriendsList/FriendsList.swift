//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            } 
            .navigationBarTitle(Text("Friends"))
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
