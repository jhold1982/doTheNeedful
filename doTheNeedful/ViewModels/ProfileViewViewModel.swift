//
//  ProfileViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModel: ObservableObject {
	
	init() { }
	
	func toggleIsDone(item: ToDoListItem) {
		var itemCopy = item
		itemCopy.setDone(!item.isDone)
		
		guard let uid = Auth.auth().currentUser?.uid else {
			return
		}
		
		let database = Firestore.firestore()
		database.collection("users")
			.document(uid)
			.collection("todos")
			.document(itemCopy.id)
			.setData(itemCopy.asDictionary())
	}
 }
