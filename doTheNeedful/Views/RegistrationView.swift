//
//  RegistrationView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct RegistrationView: View {
	
	// MARK: - Properties
	@StateObject var viewModel = RegistrationViewViewModel()
	
	// MARK: - View Body
    var body: some View {
		
		VStack(spacing: 10) {
			HeaderView(
				title: "Register",
				subtitle: "Now",
				angle: -15,
				backgroundColor: .orange
			)
			.offset(y: 10)
			
			Spacer()
			
			VStack {
				TextField("Your Name", text: $viewModel.name)
					.textFieldStyle(.roundedBorder)
					.autocapitalization(.none)
					.autocorrectionDisabled()
				
				TextField("Email", text: $viewModel.email)
					.textFieldStyle(.roundedBorder)
					.autocapitalization(.none)
					.autocorrectionDisabled()
				
				SecureField("Password", text: $viewModel.password)
					.textFieldStyle(.roundedBorder)
					.autocapitalization(.none)
					.autocorrectionDisabled()
				
				Button("Create Account...") {
					viewModel.register()
				}
				.padding(.top, 10)
				.buttonStyle(CustomButtonStyle())
			}
			.padding()
			.frame(width: 350)
			.offset(y: -100)
			
			Spacer()
		}
    }
	
	// MARK: - Functions
}

#Preview {
    RegistrationView()
}
