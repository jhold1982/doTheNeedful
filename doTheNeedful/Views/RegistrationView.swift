//
//  RegistrationView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct RegistrationView: View {
	
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
		
		VStack {
			HeaderView(
				title: "Register",
				subtitle: "Now",
				angle: -30,
				backgroundColor: .orange
			)
			
			Spacer()
		}
		
    }
}

#Preview {
    RegistrationView()
}
