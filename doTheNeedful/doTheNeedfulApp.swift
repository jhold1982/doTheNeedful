//
//  doTheNeedfulApp.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI
import FirebaseCore

@main
struct doTheNeedfulApp: App {
	
	init() {
		FirebaseApp.configure()
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
