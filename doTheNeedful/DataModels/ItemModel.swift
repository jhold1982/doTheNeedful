//
//  ItemModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
	
	let id: String
	let title: String
	let dueDate: TimeInterval
	let createdDate: TimeInterval
	var isDone: Bool
	
	mutating func setDone(_ state: Bool) {
		isDone = state
	}
}
