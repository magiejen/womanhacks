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
    
    let drink_toppings = ["boba", "lychee jelly", "coffee jelly", "aloe vera", "grass jelly", "egg pudding", "crystal boba", "mini boba", "red bean", "mungbean", "coconut jelly", "sago", "basil seed"]
    let fruit_flavors = ["strawberry", "mango", "orange", "lemon", "passionfruit", "lychee", "wintermelon", "peach", "grapefruit", "longan", "honey"]
    let milk_flavors = ["milk", "coffee", "Thai", "taro", "rose", "jasmine"]
    let drink_heat = ["iced", "hot"]
    let drink_base = ["green tea", "black tea", "oolong tea"]
    
    //let color = Color(red: 175, green: 197, blue: 219, opacity: 1)
    func fillCup(){
        let randomHeat = Int.random(in: 0 ..< self.drink_heat.count)
        self.heat = self.drink_heat[randomHeat]
        let randomChoice = Int.random(in: 0 ... 2)
        if randomChoice == 0 {
            let randomFlavor = Int.random(in: 0 ..< self.fruit_flavors.count)
            self.flavor = self.fruit_flavors[randomFlavor]
        } else {
            let randomFlavor = Int.random(in: 0 ..< self.milk_flavors.count)
            self.flavor = self.milk_flavors[randomFlavor]
        }
        let randomBase = Int.random(in: 0 ..< self.drink_base.count)
        self.base = self.drink_base[randomBase]
        let randomTopping = Int.random(in: 0 ..< self.drink_toppings.count)
        self.topping = self.drink_toppings[randomTopping]
    }
    var body: some View {

        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color(red: 181/255.0, green: 255/255.0, blue: 244/255.0, opacity: 1), Color(red: 78/255.0, green: 161/255.0, blue: 194/255.0, opacity: 1)]), center: .center, startRadius: 2, endRadius: 500).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer(minLength: 40)
                blankBobaImage(flavor: $flavor)
                toppingView(topping: $topping).offset(y: -408)
                .padding(.bottom, -408)
                bobaOutline().offset(y: -417)
                    .padding(.bottom, -417)
                
//                let imageName1 = "blankBoba.png"
//                let image1 = UIImage(named: imageName1)
//                let imageView1 = UIImageView(image: image1!)
//                imageView1.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
//                self.view.bringSubviewToFront(imageView1)
//                Text("\(heat)").font(.custom("Avenir", size: 30)).padding()
//                Text("\(flavor)").font(.custom("Avenir", size: 30)).padding()
//                Text("\(base)").font(.custom("Avenir", size: 30)).padding()
//                Text("with \(topping)").font(.custom("Avenir", size: 30)).padding()
                Text("Your boba order:")
                    .font(.custom("American Typewriter", size: 20))
                    .padding()
                    .multilineTextAlignment(.center)
                Text("\(heat) \(flavor) \(base) \n with \(topping)")
                    .font(.custom("American Typewriter", size: 25))
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

