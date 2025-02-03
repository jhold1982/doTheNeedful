//
//  UserModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation

struct User: Codable {
	let id: String
	let name: String
	let email: String
	let joined: TimeInterval
}
