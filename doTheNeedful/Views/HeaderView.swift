//
//  HeaderView.swift
//  doTheNeedful
//
//  Created by Justin Hold on 1/13/25.
//

import SwiftUI

struct HeaderView: View {
	
	// MARK: - Properties
	let title: String
	let subtitle: String
	let angle: Double
	let backgroundColor: Color
	
	
	// MARK: - View Body
    var body: some View {
        
		ZStack {
			RoundedRectangle(cornerRadius: 20)
				.foregroundStyle(backgroundColor)
				.rotationEffect(Angle(degrees: angle))
				
			VStack {
				Text(title)
					.font(.system(size: 50))
					.bold()
					.foregroundStyle(.white)
				
				Text(subtitle)
					.font(.system(size: 30))
					.foregroundStyle(.white)
			}
			.padding(.top, 30)
			
		}
		.frame(width: UIScreen.main.bounds.width * 3, height: 350)
		.offset(y: -150)
    }
}

#Preview {
	HeaderView(title: "Title", subtitle: "Sub", angle: 30, backgroundColor: .pink)
}
