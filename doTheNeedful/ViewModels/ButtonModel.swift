//
//  ButtonModel.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/13/25.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.frame(width: 315, height: 44)
			.background(configuration.isPressed ? Color.gray : Color.blue)
			.foregroundColor(.white)
			.cornerRadius(8)
	}
}
