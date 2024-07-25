//
//  HikeApp.swift
//  Hike
//
//  Created by ADIL ZAHOOR MALIK on 25/07/2024.
//

import SwiftUI

@main
struct HikeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
