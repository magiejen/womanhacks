//
//  ParentView.swift
//  bobaGenerator
//
//  Created by Maggie Lim on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    @State var view = false
    @State var count = 0
    @State var color = Color.white
    var body: some View {
        ZStack {
            Color(red: 207/255.0, green: 244/255.0, blue: 255/255.0, opacity: 1).edgesIgnoringSafeArea(.all)
            VStack {
                if view {
                    SelectionView()
                } else {
                    WelcomeScreen()
                    Spacer()
                    Button(action: {
                        self.view = !self.view
                    }) {
                        HStack {
                            Text("Find me a drink")
                            .font(.custom("Avenir", size: 25))
                            //.padding(.horizontal, 50)
                            Image(systemName: "chevron.right.circle")
                            .font(.headline)
                        }.padding(20)
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
                    Spacer(minLength: 75)
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
