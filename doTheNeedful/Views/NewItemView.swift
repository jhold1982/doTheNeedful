//
//  NewItemView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct NewItemView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = NewItemViewViewModel()
	@Binding var isPresented: Bool
	
	
	// MARK: - View Body
	var body: some View {
		
		VStack {
			Text("New Item")
				.font(.system(size: 32))
				.bold()
				.padding(.top, 100)
			
			Form {
				TextField("Title", text: $viewModel.title)
					.textFieldStyle(DefaultTextFieldStyle())
				
				DatePicker("Due Date", selection: $viewModel.dueDate)
					.datePickerStyle(GraphicalDatePickerStyle())
				
				Button {
					if viewModel.canSave {
						viewModel.saveNewItem()
						isPresented = false
					} else {
						viewModel.showAlert = true
					}
				} label: {
					Text("Save New Item")
				}
				.buttonStyle(CustomButtonStyle())
			}
		}
		.alert(isPresented: $viewModel.showAlert) {
			Alert(
				title: Text("Error"),
				message: Text("Please fill out all fields and select due date.")
			)
		}
	}
}


#Preview {
	NewItemView(isPresented: Binding(get: { true }, set: { _ in }))
}
