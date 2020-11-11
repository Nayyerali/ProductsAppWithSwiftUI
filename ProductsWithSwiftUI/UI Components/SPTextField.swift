//
//  TextField.swift
//  ProductsWithSwiftUI
//
//  Created by Siliconplex on 10/11/2020.
//  Copyright © 2020 Siliconplex. All rights reserved.
//

import SwiftUI

struct SPTextField: View {

    @Binding var sptext: String

    var body: some View {
        TextField("", text: $sptext).disableAutocorrection(true)
    }
}

//struct TextField_Previews: PreviewProvider {
//    static var previews: some View {
//        TextField(text: <#Binding<String>#>)
//    }
//}

struct SPTextField_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}
