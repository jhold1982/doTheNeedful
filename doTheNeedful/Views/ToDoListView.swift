//
//  ToDoListView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
	
	// MARK: - Properties
	@StateObject var viewModel: ToDoListViewViewModel
	
	@FirestoreQuery var items: [ToDoListItem]
	
	init(userID: String) {
		self._items = FirestoreQuery(collectionPath: "users/\(userID)/todos")
		
		self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userID: userID))
	}
	
	// MARK: - View Body
    var body: some View {
		
		NavigationView {
			VStack {
				List(items) { item in
					ToDoListItemView(item: item)
						.swipeActions {
							Button(role: .destructive) {
								// Call Delete Method
								viewModel.deleteItem(id: item.id)
							} label: {
								Label("Delete", systemImage: "trash")
							}
							.tint(.red)
						}
				}
				.listStyle(PlainListStyle())
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
	ToDoListView(userID: "cythpzs0SBhIOf5nZbcNWh293En2")
}
