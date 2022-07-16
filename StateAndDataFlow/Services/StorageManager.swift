//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Nikolay Trofimov on 16.07.2022.
//

import SwiftUI

enum StorageManager {
    @AppStorage("isRegistered") static var isRegistered = false
    @AppStorage("name") static var name = ""
}
