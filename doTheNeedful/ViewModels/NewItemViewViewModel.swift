//
//  NewItemViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
	
	@Published var title: String = ""
	@Published var dueDate: Date = Date()
	@Published var showAlert: Bool = false
	
	init() { }
	
	func saveNewItem() {
		//
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
