//
//  SwiftUI_tutorial_1App.swift
//  SwiftUI_tutorial#1
//
//  Created by dhui on 2023/08/08.
//

import SwiftUI

@main
struct SwiftUI_tutorial_1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
