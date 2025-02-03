//
//  ContentView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = ContentViewModel()
	
	// MARK: - View Body
    var body: some View {
        
		if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
			// is Signed In
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
