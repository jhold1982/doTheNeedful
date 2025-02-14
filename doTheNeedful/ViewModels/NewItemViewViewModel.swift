//
//  NewItemViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel: ObservableObject {
	
	@Published var title: String = ""
	@Published var dueDate: Date = Date()
	@Published var showAlert: Bool = false
	
	init() { }
	
	func saveNewItem() {
		
		guard canSave else {
			return
		}
		
		// get current user ID
		guard let currentUserID = Auth.auth().currentUser?.uid else {
			return
		}
		
		// create the to do list item data model
		let newID = UUID().uuidString
		let newItem = ToDoListItem(
			id: newID,
			title: title,
			dueDate: dueDate.timeIntervalSince1970,
			createdDate: Date().timeIntervalSince1970,
			isDone: false
		)
		
		// then, save the model
		let database = Firestore.firestore()
		database.collection("users")
			.document(currentUserID)
			.collection("todos")
			.document(newID)
			.setData(newItem.asDictionary())
		
	}
	
	var canSave: Bool {
		guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
			return false
		}
		
		// subtract by how many seconds exist in a day
		// making sure the due date is greater than or equal to yesterday
		guard dueDate >= Date().addingTimeInterval(-86400) else {
			return false
		}
		
		return true
	}
}
