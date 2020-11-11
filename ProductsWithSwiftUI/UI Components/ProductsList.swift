//
//  ProductsList.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct ProductsList: View {
    
    var body: some View {
        
        VStack(alignment: .center){
            
            List{
                ProductsRow()
            }
        }
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
