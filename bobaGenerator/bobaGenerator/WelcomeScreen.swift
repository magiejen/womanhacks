//
//  welcomeScreen.swift
//  bobaGenerator
//
//  Created by Maggie Lim on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Boba'd").font(.custom("American Typewriter", size: 70)).padding()
            Spacer()
        }
       
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
