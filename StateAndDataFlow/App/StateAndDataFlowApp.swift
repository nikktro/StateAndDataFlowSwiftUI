//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 11.07.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}