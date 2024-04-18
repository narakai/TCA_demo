//
//  TCA_demoApp.swift
//  TCA_demo
//
//  Created by lai leon on 12/4/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_demoApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_demoApp.store)
        }
    }
}
