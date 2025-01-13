//
//  LoginView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct LoginView: View {
	
	// MARK: - Properties
	@State private var email: String = ""
	@State private var password: String = ""
	@State private var showRegView: Bool = false
	
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
					TextField("eM@1L", text: $email)
						.textFieldStyle(.roundedBorder)
						
					SecureField("p4$$w0rd", text: $password)
						.textFieldStyle(.roundedBorder)
					
					Button {
						// Login Action
					} label: {
						ZStack {
							RoundedRectangle(cornerRadius: 10)
								.frame(width: 320, height: 44)
							Text("Log In")
								.bold()
								.foregroundStyle(.white)
						}
						.offset(x: 1)
					}
					.padding(.top, 20)
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
