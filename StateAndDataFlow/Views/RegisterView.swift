//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 13.07.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var userName = ""
    @State private var isNameLengthMatch = false
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                    .frame(width: 240)
                    .onChange(of: userName) { _ in
                        isNameLengthMatch = userName.count >= 3
                    }
                
                Text("\(userName.count)")
                    .padding(.trailing, -24)
                    .foregroundColor( isNameLengthMatch ? .green : .red )
            }
            .padding()
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .foregroundColor(isNameLengthMatch ? .blue : .gray.opacity(0.5))
            }
            .disabled(!isNameLengthMatch)
            
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty, isNameLengthMatch  {
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
