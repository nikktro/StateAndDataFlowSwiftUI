//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 14.07.2022.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    
    @Published var isRegistered = StorageManager.isRegistered {
        didSet {
            StorageManager.isRegistered = isRegistered
        }
    }
    
    var name = StorageManager.name {
        didSet {
            StorageManager.name = name
        }
    }

}
