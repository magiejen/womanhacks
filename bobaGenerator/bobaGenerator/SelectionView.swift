//
//  SelectionView.swift
//  bobaGenerator
//
//  Created by Maggie Lim on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import SwiftUI

enum ViewSelection {
    case preference
    case unselected
    case surprise
}

struct SelectionView: View {
    @State var selection: ViewSelection = .unselected
    var body: some View {
        VStack {
            if self.selection == .unselected {
                Button(action: {
                    self.selection = .preference
                }) {
                    HStack {
                        Text("I Have a Preference")
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
                }.padding()
                Button(action: {
                    self.selection = .surprise
                }) {
                    HStack {
                        Text("Surprise Me")
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
                }.padding()
                
            } else if self.selection == .preference {
                PreferencesView()
            } else {
                DrinkView()
            }
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
