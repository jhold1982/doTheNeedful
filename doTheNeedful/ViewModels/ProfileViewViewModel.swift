//
//  ProfileViewViewModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModel: ObservableObject {
	
	@Published var user: User? = nil
	
	init() { }
	
	func logOut() {
		
		do {
			try Auth.auth().signOut()
		} catch {
			print(error)
		}
	}
	
	func fetchUser() {
		guard let userID = Auth.auth().currentUser?.uid else { return }
		
		Firestore.firestore().collection("users").document(userID).getDocument {
			[weak self] snapshot,
			error in
			guard let data = snapshot?.data(),
				  error == nil else {
				return
				
			}
			
			DispatchQueue.main.async {
				self?.user = User(
					id: data["id"] as? String ?? "",
					name: data["name"] as? String ?? "",
					email: data["email"] as? String ?? "",
					joined: data["joined"] as? TimeInterval ?? 0
				)
			}
		}
	}
 }
