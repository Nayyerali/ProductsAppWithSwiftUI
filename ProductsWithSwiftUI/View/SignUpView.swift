//
//  LoginView.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @State var userName = ""
    @State var phoneNumber = ""
    @State var email = ""
    @State var password = ""
    @State var randomImage = Int.random(in: 1...6)
    
    var body: some View {
        
        ZStack{
            ScrollView{
                VStack(spacing: 16.0){
                    
                    Image("PlaceholderImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading, spacing: 10.0){
                        
                        HStack {
                            Image(systemName: "person").foregroundColor(.gray)
                            SPTextField(sptext: $userName)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        
                        HStack {
                            Image(systemName: "phone").foregroundColor(.gray)
                            SPTextField(sptext: $phoneNumber)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        
                        HStack {
                            Image(systemName: "envelope").foregroundColor(.gray)
                            SPTextField(sptext: $email)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        
                        HStack {
                            Image(systemName: "lock").foregroundColor(.gray)
                            SPTextField(sptext: $password)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    }
                    .padding(.horizontal, 5.0)
                    
                    Button("Sign Up"){}
                        .padding()
                        .frame(width: 200.0, height: 44.0)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                    Spacer()
                }.padding(.vertical)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
