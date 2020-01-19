//
//  toppingView.swift
//  bobaGenerator
//
//  Created by April Sanchez on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI

struct toppingView: View {
    @Binding var topping: String
    var toppings: [String:String] = ["boba": "bobaTopping", "lychee jelly": "lychee1", "coffee jelly": "coffee", "aloe vera": "aloe", "grass jelly": "grass_jelly 3", "egg pudding": "egg_pudding 3",  "crystal boba": "crysal boba", "mini boba": "mini_boba", "red bean": "redBean", "mungbean": "mungBean", "coconut jelly": "lychee1", "sago": "sago", "basil seed": "basilseed"]
    var body: some View {
        Image(toppings[topping]!).resizable().frame(width: 300, height: 400)
    }
}

struct toppingView_Previews: PreviewProvider {
    @State static var topping = ""
    static var previews: some View {
        toppingView(topping: $topping)
    }
}
