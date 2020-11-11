//
//  ContentView.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct ProductsView: View {
    
    var body: some View {
        
        NavigationView{
            
            ProductsList().navigationBarTitle("Products")
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductsView()
    }
}
