//
//  DrinkView.swift
//  bobaGenerator
//
//  Created by Maggie Lim on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI
import Foundation

struct DrinkView: View {

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
    
    @State var heat = "hot"
    @State var topping = "boba"
    @State var flavor = "strawberry"
    @State var base = "green tea"
    
    let drink_toppings = ["boba"," lychee jelly", "coffee jelly", "aloe vera", "grass jelly", "egg pudding", "milk pudding", "crystal boba", "mini boba", "popping boba", "red bean", "mungbean", "coconut jelly", "sago", "basil seed"]
    let drink_flavors = ["strawberry", "mango", "orange", "lemon", "passionfruit", "lychee", "wintermelon", "peach", "grapefruit", "longan", "honey"]
    let drink_heat = ["iced", "hot"]
    let drink_base = ["green tea", "black tea", "oolong tea"]
    
    //let color = Color(red: 175, green: 197, blue: 219, opacity: 1)
    func fillCup(){
        let randomHeat = Int.random(in: 0 ..< self.drink_heat.count)
        self.heat = self.drink_heat[randomHeat]
        let randomFlavor = Int.random(in: 0 ..< self.drink_flavors.count)
        self.flavor = self.drink_flavors[randomFlavor]
        let randomBase = Int.random(in: 0 ..< self.drink_base.count)
        self.base = self.drink_base[randomBase]
        let randomTopping = Int.random(in: 0 ..< self.drink_toppings.count)
        self.topping = self.drink_toppings[randomTopping]
    }
    var body: some View {

        ZStack {
            Color(red: 207/255.0, green: 244/255.0, blue: 255/255.0, opacity: 1)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer(minLength: 175)
                Text("\(heat)").font(.custom("Avenir", size: 30)).padding()
                Text("\(flavor)").font(.custom("Avenir", size: 30)).padding()
                Text("\(base)").font(.custom("Avenir", size: 30)).padding()
                Text("with \(topping)").font(.custom("Avenir", size: 30)).padding()
                Text("You got: \(heat) \(flavor) \(base) with \(topping)")
                    .font(.custom("American Typewriter", size: 30))
                    .padding()
                    .multilineTextAlignment(.center)
                Spacer(minLength: 75)
                Button(action: {
                    self.fillCup()
                })  {
                    Text("Fill my cup!")
                        .font(.custom("Avenir", size: 25))
                        .padding(20)
                        .frame(minWidth: 0, maxWidth: 350)
                        .background(Color(red: 255/255.0, green: 240/255.0, blue: 143/255.0, opacity: 1))
                        .foregroundColor(Color(red: 77/255.0, green: 77/255.0, blue: 77/255.0, opacity: 1))
                        .cornerRadius(40)
                        .padding(0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color(red: 163/255.0, green: 163/255.0, blue: 163/255.0, opacity: 1), lineWidth: 1)
                        )
                }
                Spacer(minLength: 55)
            }.transition(.slide)
        }
        
        
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView()
    }
}

