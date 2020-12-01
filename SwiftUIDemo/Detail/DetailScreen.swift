//
//  DetailScreen.swift
//  SwiftUIDemo
//
//  Created by Андрей on 01.12.2020.
//

import SwiftUI

struct DetailScreen: View {
    
    let object: ProductsResponse
    
    var body: some View {
        VStack(spacing: 20) {
            ImageView(object: object)
            InfoView(object: object)
            VStack(alignment: .leading, spacing: 10) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
            }
            Spacer()
        }.padding()
    }
}

private struct InfoView: View {
    
    let object: ProductsResponse
    
    var body: some View {
        VStack(spacing: 10) {
            Text(object.name)
                .font(.title)
            HStack(spacing: 40) {
                VStack {
                    Text("\(object.lessons)")
                        .font(.title)
                    Text("Lessons")
                        .font(.body)
                        .fontWeight(.medium)
                }
                VStack {
                    Text("\(object.students)")
                        .font(.title)
                    Text("Students")
                        .font(.body)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

private struct ImageView: View {
    
    let object: ProductsResponse
    var imageHeight: CGFloat {
        switch object.category.rawValue {
        case "Courses":
            return 170
        case "Webinars":
            return 190
        default:
            return 0
        }
    }
    
    var body: some View {
            Image(object.image)
                .resizable()
                .cornerRadius(30)
                .frame(width: 170, height: imageHeight)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[5])
    }
}
