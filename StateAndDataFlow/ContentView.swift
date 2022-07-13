//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 11.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(tapCount: $tapCount)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    @Binding var tapCount: Int
    
    var body: some View {
        Button(action: { tapCount += 1 }) {
            Text("Tap Me")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
