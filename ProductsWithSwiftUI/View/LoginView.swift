//
//  SignUpView.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ZStack{
            ScrollView{
                VStack(spacing: 16.0){
                    
                    Image("Image1")
                        
                        .frame(width: 150.0, height: 150.0)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading, spacing: 10.0){
                        HStack(spacing: 8.0) {
                            Image(systemName: "envelope").foregroundColor(.gray)
                            SPTextField(sptext: $email)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        HStack(spacing: 8.0) {
                            Image(systemName: "lock").foregroundColor(.gray)
                            SPTextField(sptext: $password)}
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    }
                    .padding(.horizontal, 5.0)
                    VStack(alignment: .trailing){
                        Button("Forgot Password ?"){}
                            .foregroundColor(Color.black)
                            .padding(.trailing)
                    }
                    
                    Button("Login"){}
                        .padding()
                        .frame(width: 200.0, height: 44.0)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                    Spacer()
                    
                }
                .padding(.vertical)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
