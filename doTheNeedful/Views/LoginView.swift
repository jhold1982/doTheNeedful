//
//  LoginView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/8/25.
//

import SwiftUI

struct LoginView: View {
	
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
		
		VStack {
			
			// HEADER
			ZStack {
				RoundedRectangle(cornerRadius: 20)
					.foregroundStyle(.pink)
					
				
				VStack {
					Text("Do The Needful")
						.font(.headline).bold()
						.foregroundStyle(.white)
					
					Text("...at the earliest.")
						.font(.subheadline)
						.foregroundStyle(.white)
				}
			}
			.frame(width: UIScreen.main.bounds.width * 3, height: 300)
			
			
			
			// LOGIN FORM
			
			
			
			// CREATE ACOUNT
			
			
		} /// outer VSTACK
    }
}

#Preview {
    LoginView()
}
