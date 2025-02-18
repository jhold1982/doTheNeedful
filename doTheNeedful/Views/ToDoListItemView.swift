//
//  ToDoListItemView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ToDoListItemView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = ToDoListItemViewViewModel()
	
	let item: ToDoListItem
	
	
	// MARK: - View Body
    var body: some View {
        
		HStack {
			
			VStack(alignment: .leading) {
				
				Text(item.title)
					.font(.body)
					.bold()
				
				Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
					.font(.footnote)
					.foregroundStyle(.secondary)
			}
			
			Spacer()
			
			Button {
				viewModel.toggleIsDone(item: item)
			} label: {
				Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
			}
		}
    }
}

#Preview {
	ToDoListItemView(
		item: .init(
			id: "123",
			title: "Test",
			dueDate: Date().timeIntervalSince1970,
			createdDate: Date().timeIntervalSince1970,
			isDone: false
		)
	)
}
