//
//  ContentView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	@State private var isLoggedIn: Bool = false
	
	
	// MARK: - View Body
    var body: some View {
        
		if isLoggedIn {
			ToDoListView()
		} else {
			LoginView()
		}
    }
	
	
	// MARK: - Functions
}

#Preview {
    ContentView()
}
