//
//  ContentView.swift
//  Sabrina
//
//  Created by scholar on 27/07/2023.
//

import SwiftUI
//COMMENTTTTT
struct ContentView: View {
    
    @State private var colour = ""
    @State private var txtTitle = "Guess Sabrina's favourite colour!"
    
    var body: some View {
        VStack (spacing: 79){
            Text(txtTitle)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
            TextField("Type here!", text: $colour)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width: 0.5)
                .padding(.all)
            Button("Submit") {
                if colour == "Blue"{
                    txtTitle = "Correct!"
                 
                }
                else {
                    txtTitle = "You don't know me very well..."
                }
                    
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
