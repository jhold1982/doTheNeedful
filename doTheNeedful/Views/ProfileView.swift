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
			
			VStack(alignment: .leading) {
				
				if let user = viewModel.user {
					profile(user: user)
				} else {
					Text("Loading Profile...")
						.padding()
				}
				
				Button {
					viewModel.logOut()
				} label: {
					Text("Sign Out")
				}
				.buttonStyle(CustomButtonStyle())
			}
			.navigationTitle("Profile")
			.padding(.top, 40)
		}
		.onAppear() {
			viewModel.fetchUser()
		}
	}
	
	// MARK: - Functions
	@ViewBuilder
	func profile(user: User) -> some View {
		// Avatar
		Image(systemName: "person.circle")
			.resizable()
			.aspectRatio(contentMode: .fit)
			.foregroundStyle(.blue)
			.frame(width: 152, height: 125)
			.padding()
		
		// info - name, email, member since data
		VStack(alignment: .leading) {
			
			HStack {
				Text("Name:")
					.bold()
				Text(user.name)
			}
			
			HStack {
				Text("Email:")
					.bold()
				Text(user.email)
			}
			
			HStack {
				Text("Member Since:")
					.bold()
				Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
			}
		}
		.padding()
	}
}

#Preview {
	ProfileView()
}
