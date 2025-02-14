//
//  LoginView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct LoginView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = LoginViewViewModel()
	
	
	// MARK: - View Body
    var body: some View {
		
		NavigationView {
			VStack {
				// HEADER
				HeaderView(
					title: "Do The Needful",
					subtitle: "...at the earliest.",
					angle: 15,
					backgroundColor: .pink
				)
				
				// LOGIN FORM
				VStack(spacing: 10) {
					TextField("eM@1L", text: $viewModel.email)
						.textFieldStyle(.roundedBorder)
						.autocapitalization(.none)
						.autocorrectionDisabled()
						
					SecureField("p4$$w0rd", text: $viewModel.password)
						.textFieldStyle(.roundedBorder)
						.autocapitalization(.none)
						.autocorrectionDisabled()
					
					Button("Log in") {
						viewModel.login()
					}
					.padding(.top, 10)
					.buttonStyle(CustomButtonStyle())
				}
				.padding()
				.frame(width: 350)
				
				Spacer()
				
				// CREATE ACOUNT
				VStack {
					Text("Don't have an account?")
					
					NavigationLink("Create one here...", destination: RegistrationView())
					
				}
			}
		}
    }
	
	// MARK: - Functions
}

#Preview {
    LoginView()
}
