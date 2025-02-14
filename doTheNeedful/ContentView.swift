//
//  ContentView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = ContentViewViewModel()
	
	
	// MARK: - View Body
    var body: some View {
        
		if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
			// is Signed In
			accountView
			
		} else {
			LoginView()
		}
    }
	// MARK: - Functions
	@ViewBuilder
	var accountView: some View {
		TabView {
			
			Tab("Home", systemImage: "house.fill") {
				ToDoListView(userID: viewModel.currentUserID)
			}
			
			Tab("Profile", systemImage: "person.fill") {
				ProfileView()
			}
			
		}
	}
}

#Preview {
    ContentView()
}
