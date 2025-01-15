//
//  LoginViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation

class LoginViewViewModel: ObservableObject {
	
	@Published var email = ""
	@Published var password = ""
	
	init() {
		
	}
	
	func login() {
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			return
		}
		
		print("DEBUG: user entered \(email) & \(password)")
	}
	
	func validate() {
		
	}
}
