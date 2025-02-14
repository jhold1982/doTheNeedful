//
//  ContentViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseAuth

class ContentViewViewModel: ObservableObject {
	
	@Published var currentUserID: String = ""
	private var handler: AuthStateDidChangeListenerHandle?
	
	init() {
		self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
			DispatchQueue.main.async {
				self?.currentUserID = user?.uid ?? ""
			}
			
		}
	}
	
	public var isSignedIn: Bool {
		return Auth.auth().currentUser != nil
	}
}
