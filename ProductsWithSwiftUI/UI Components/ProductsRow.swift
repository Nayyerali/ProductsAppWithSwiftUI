//
//  ProductsRow.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct ProductsRow: View {
    
    var body: some View {
        
        ForEach((1...10), id: \.self) { number in
            
            Text("\(number)")
            
        }
    }
}

struct ProductsRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductsRow()
    }
}
