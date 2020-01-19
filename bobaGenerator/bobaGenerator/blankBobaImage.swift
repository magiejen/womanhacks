//
//  blankBobaImage.swift
//  bobaGenerator
//
//  Created by April Sanchez on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI



struct blankBobaImage: View {
    @Binding var flavor: String
    var flavorColors: [String:Color] = [
        "strawberry": Color(red: 1, green: (78/255), blue: (78/255), opacity: 0.8),
        "mango": Color(red: 1, green: (188/255), blue: 0, opacity: 0.8),
        "orange": Color(red: 1, green: (144/255), blue: 0, opacity: 1),
        "lemon": Color(red: (240/255), green: (240/255), blue: 36/255, opacity: 0.8),
        "passionfruit": Color(red: 1, green: (246/255), blue: (117/255), opacity: 0.8),
        "milk": Color(red: (240/255), green: (204/255), blue: (150/255), opacity: 0.8),
        "coffee": Color(red:(181/255), green: (110/255), blue: (3/255), opacity: 0.8),
        "Thai": Color(red: 225/255, green: (135/255), blue: 0, opacity: 1),
        "taro": Color(red: (207/255), green: (157/255), blue: 250/255, opacity: 0.8),
        "rose": Color(red: 253/255, green: (215/255), blue: (239/255), opacity: 0.8),
        "jasmine": Color(red: 249/255, green: (253/255), blue: 231/255, opacity: 1),
        "peach": Color(red: 1, green: (184/255), blue: (129/255), opacity: 0.8),
        "grapefruit": Color(red: 227/255, green: 128/255, blue: 109/255),
        "lychee": Color(red: 172/255, green: 152/255, blue: 122/255),
        "wintermelon": Color(red: 208/255, green: 216/255, blue: 173/255),
        "longan": Color(red: 134/255, green: 46/255, blue: 36/255),
        "honey": Color(red: 231/255, green: 190/255, blue: 105/255)
    ]
    var body: some View {
        Image("blankBoba").resizable().frame(width: 300, height: 400).colorMultiply(flavorColors[flavor]!)
//        let image = UIImage(named: "blankBoba")
//        let imageView = UIImageView(image: image!)
//        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
//        body.addSubview(imageView)
}

struct blankBobaImage_Previews: PreviewProvider {
    @State static var flavor = ""
    static var previews: some View {
        blankBobaImage(flavor: $flavor)
    }
}
}
