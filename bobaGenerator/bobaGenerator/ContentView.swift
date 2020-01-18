//
//  ContentView.swift
//  bobaGenerator
//
//  Created by Maggie Lim on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI
import Foundation

struct ContentView: View {

//    let path = Bundle.main.path(forResource: "drinkContents", ofType: "json")
//    let jsonData = try? NSData(contentsOfFile: path!, options: NSData.ReadingOptions.mappedIfSafe)
//
//    let json = try? JSONSerialization.jsonObject(with: jsonData, options: [])
//
//    if let dictionary = jsonWithObjectRoot as? [String: Any] {
//
//        for (key, value) in dictionary {
//            print(value)
//        }
//    }
//
    
//    @State var drink_base = "none"
    @State var heat = "hot"
    @State var topping = "boba"
    @State var flavor = "strawberry"
    @State var base = "green tea"
    
    let drink_toppings = ["boba"," lychee jelly", "coffee jelly", "aloe vera", "grass jelly", "egg pudding", "milk pudding", "crystal boba", "mini boba", "popping boba", "red bean", "mungbean", "coconut jelly", "sago", "basil seed"]
    let drink_flavors = ["strawberry", "mango", "orange", "lemon", "passionfruit", "lychee", "wintermelon", "peach", "grapefruit", "longan", "honey"]
    let drink_heat = ["iced", "hot"]
    let drink_base = ["green tea", "black tea", "oolong tea"]
    
    //let color = Color(red: 175, green: 197, blue: 219, opacity: 1)
        
    var body: some View {
        
        ZStack {
            Color(red: 207/255.0, green: 244/255.0, blue: 255/255.0, opacity: 1)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("\(heat)").padding()
                Text("\(flavor)").padding()
                Text("\(base)").padding()
                Text("with \(topping)").padding()
                Text("You got: \(heat) \(flavor) \(base) with \(topping)").padding()
                
                Button(action: {
                    let randomHeat = Int.random(in: 0 ..< self.drink_heat.count)
                    self.heat = self.drink_heat[randomHeat]
                    let randomFlavor = Int.random(in: 0 ..< self.drink_flavors.count)
                    self.flavor = self.drink_flavors[randomFlavor]
                    let randomBase = Int.random(in: 0 ..< self.drink_base.count)
                    self.base = self.drink_base[randomBase]
                    let randomTopping = Int.random(in: 0 ..< self.drink_toppings.count)
                    self.topping = self.drink_toppings[randomTopping]
                })  {
                    Text("Find me a drink!")
                        .background(Color(red: 255/255.0, green: 240/255.0, blue: 143/255.0, opacity: 1))
                        .padding(10)
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

