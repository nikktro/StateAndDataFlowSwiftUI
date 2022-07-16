//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 14.07.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
