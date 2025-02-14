//
//  ToDoListView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ToDoListView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = ToDoListViewViewModel()
	
	private let userID: String
	
	init(userID: String) {
		self.userID = userID
	}
	
	// MARK: - View Body
    var body: some View {
		
		NavigationView {
			VStack {
				
			}
			.navigationTitle("To Do List")
			.toolbar {
				Button {
					// Action
					viewModel.showNewItemView = true
				} label: {
					Image(systemName: "plus")
				}
				.padding()
			}
			.sheet(isPresented: $viewModel.showNewItemView) {
				NewItemView(isPresented: $viewModel.showNewItemView)
			}
		}
    }
}

#Preview {
	ToDoListView(userID: "")
}
