//
//  ContentView.swift
//  AllanCard
//
//  Created by Allan on 04/04/20.
//  Copyright © 2020 Allan Galdino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.91, green:0.30, blue:0.24)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("fotoMinha")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Allan Galdino")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+55 (19) 99850-1170", imageName: "phone.fill")
                InfoView(text: "gagaldinoallan@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


