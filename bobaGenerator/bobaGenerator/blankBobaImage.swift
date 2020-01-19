//
//  blankBobaImage.swift
//  bobaGenerator
//
//  Created by April Sanchez on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI

struct blankBobaImage: View {
    var body: some View {
        Image("blankBoba").resizable().frame(width: 300, height: 400).tint
    }
}

struct blankBobaImage_Previews: PreviewProvider {
    //@State var flavor
    static var previews: some View {
        blankBobaImage()
    }
}
