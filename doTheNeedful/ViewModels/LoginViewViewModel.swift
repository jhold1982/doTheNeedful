//
//  LoginViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
	
	@Published var email = ""
	@Published var password = ""
	@Published var errorMessage = ""
	
	init() {
		
	}
	
	func login() {
		guard validate() else {
			return
		}
		// Try to log in
		Auth.auth().signIn(withEmail: email, password: password)
		print("DEBUG: user entered \(email) & \(password)")
	}
	
	
	private func validate() -> Bool {
		// reset Error Message to empty string when button is tapped
		errorMessage = ""
		
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
				!password.trimmingCharacters(in: .whitespaces).isEmpty else {
			
			errorMessage = "Please fill in all fields"
			return false
		}
		
		guard email.contains("@") && email.contains(".") else {
			
			errorMessage = "Please enter a valid email"
			return false
		}
		return true
	}
}
