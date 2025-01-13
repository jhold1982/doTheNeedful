//
//  KeyboardObserver.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import Foundation
import SwiftUI
import Combine

class KeyboardObserver: ObservableObject {
	@Published var isKeyboardVisible: Bool = false
	private var cancellableSet: Set<AnyCancellable> = []

	init() {
		let keyboardWillShow = NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
			.map { _ in true }
		
		let keyboardWillHide = NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
			.map { _ in false }
		
		// Merge the two publishers
		Publishers.Merge(keyboardWillShow, keyboardWillHide)
			.assign(to: \.isKeyboardVisible, on: self)
			.store(in: &cancellableSet)
	}
}

// Create an observer
// @StateObject private var keyboardObserver = KeyboardObserver()

// Use the observer
//if !keyboardObserver.isKeyboardVisible {
//	 HeaderView(title: "Event Tracker", subTitle: "Get Organized!", rotationAngle: 15, backgroundColor: .orange)
//} else {
//	 Spacer()
//}
