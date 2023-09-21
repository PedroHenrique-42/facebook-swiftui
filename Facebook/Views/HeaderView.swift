//
//  HeaderView.swift
//  Facebook
//
//  Created by Pedro Henrique on 21/09/23.
//

import SwiftUI

struct HeaderView: View {
	let facebookBlue = Color(red: 23/255.0, green: 120/255.0, blue: 242/255.0, opacity: 1)
	
	var body: some View {
		HStack {
			Text("facebook")
				.font(.system(size: 48, weight: .bold, design: .default))
				.foregroundColor(facebookBlue)
			
			Spacer()
			
			Image(systemName: "person.circle")
				.resizable()
				.frame(width: 45, height: 45, alignment: .center)
				.foregroundColor(.secondary)
		}
		.padding()
	}
}

#Preview {
	HeaderView()
}
