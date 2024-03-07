//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Vefa Kosova on 6.03.2024.
//

import SwiftUI
import SwiftData

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
