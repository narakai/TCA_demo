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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_demoApp.store)
        }
    }
}
