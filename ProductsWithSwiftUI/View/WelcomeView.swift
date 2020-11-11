//
//  WelcomeView.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var selectedLoginOption = 0
    
    var loginOption = ["Sign In", "Sign Up"]
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                BackgroundImage()
                VStack(spacing: 20.0){
                    
                    Picker("Choose login option", selection: $selectedLoginOption) {
                        
                        ForEach(0 ..< loginOption.count) {
                            Text(self.loginOption[$0]).foregroundColor(.white)
                        }
                    }
                    .clipShape(Rectangle())
                    .pickerStyle(SegmentedPickerStyle())
                    
                    if self.selectedLoginOption == 0 {
                        LoginView().navigationBarTitle("Login", displayMode: .inline)
                    } else {
                        SignUpView().navigationBarTitle("Sign Up", displayMode: .inline)
                    }
                }
                .padding(.vertical, 20.0)
                .padding(.horizontal, 20.0)
            }
            .padding(.all, 0.0)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
