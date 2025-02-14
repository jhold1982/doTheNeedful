//
//  ProfileView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct ProfileView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = ProfileViewViewModel()
	
	
	// MARK: - View Body
	var body: some View {
		
		NavigationView {
			VStack {
				
			}
			.navigationTitle("Profile")
		}
		
	}
}

#Preview {
	ProfileView()
}
