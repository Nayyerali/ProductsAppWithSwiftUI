//
//  BackgroundImage.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 11/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct BackgroundImage: View {
    
    var body: some View {
        
        Image("BG2")
            .aspectRatio(contentMode: .fill)
            .padding(.all, 0.0)
            .frame(minWidth: 0,maxWidth: .infinity,
                   minHeight: 0,maxHeight: .infinity,
                   alignment: .center)
    }
}

struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImage()
    }
}
