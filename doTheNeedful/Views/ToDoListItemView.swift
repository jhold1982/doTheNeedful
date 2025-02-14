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
	
	
	
	// MARK: - View Body
    var body: some View {
        
		Text("ToDoListItemView")
    }
}

#Preview {
    ToDoListItemView()
}
