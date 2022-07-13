//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 13.07.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $userName)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
