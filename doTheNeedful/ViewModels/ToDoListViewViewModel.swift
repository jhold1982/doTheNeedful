//
//  ToDoListViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
	
	@Published var showNewItemView: Bool = false
	
	private let userID: String
	
	init(userID: String) {
		self.userID = userID
	}
	
	/// Delete to do list item
	/// - Parameter id: Item ID in database to delete
	func deleteItem(id: String) {
		let database = Firestore.firestore()
		database.collection("users")
			.document("user_id")
			.collection("todos")
			.document(id)
			.delete()
	}
}
