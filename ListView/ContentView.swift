//
//  ContentView.swift
//  ListView
//
//  Created by Arpit Lokwani on 23/02/20.
//  Copyright © 2020 Arpit Lokwani. All rights reserved.
//

import SwiftUI

struct User:Identifiable {
    var id:Int
    
    let username,message,imageName:String
}
struct ContentView: View {
    
    let users:[User] = [.init(id: 0, username: "Name1", message: "SmallData - This is small data", imageName: "test"),.init(id: 1, username: "Name2", message: "MediumData = This is medium data with not data included. you add more data also.", imageName: "test"),.init(id:2,username: "Name3", message: "LargeData - This is very large data where you can add unlimited number of characted and check whether cells height is increasing or not. This is best feature of Swift UI where you don't need to calculate the height also", imageName: "test")]
    var body: some View {
        NavigationView{
            List{
                Text("Users").font(.headline)

                ForEach(users){
                    user in
                    UserRow(user: user)

                }
                }.navigationBarTitle(Text("Dynamic text"))
        }
        
    }
}

struct UserRow:View{
    let user:User
    var body:some View{
        
        HStack{
            Image(user.imageName).resizable()
                .clipShape(Circle())
                .frame(width:50,height: 60)
                .clipped()
           
            VStack(alignment:.leading){
                Text(user.username).font((.headline))
                Text(user.message).font((.subheadline))
            }
            

        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
