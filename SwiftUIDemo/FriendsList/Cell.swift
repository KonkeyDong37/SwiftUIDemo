//
//  Cell.swift
//  SwiftUIDemo
//
//  Created by Андрей on 30.11.2020.
//

import SwiftUI

struct Cell: View {
    
    let user: UserResponse
    
    var body: some View {
        VStack(spacing: 16.0) {
            TopView(user: user)
            Text(user.text)
        }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
