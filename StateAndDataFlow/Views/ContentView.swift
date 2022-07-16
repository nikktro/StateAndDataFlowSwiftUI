//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 11.07.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding([.top, .bottom], 60)
            
            ButtonView(title: timer.buttonTitle, color: Color.red) {
                timer.startTimer()
            }
            
            Spacer()
        }
        .padding([.top,.bottom], 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
