//
//  FilopgaveApp.swift
//  Filopgave
//
//  Created by dmu mac 31 on 23/10/2024.
//

import SwiftUI

@main
struct FilopgaveApp: App {
    var body: some Scene {
        @State var controller = StateController()
        WindowGroup {
            ContentView().environment(controller)
        }
    }
}
