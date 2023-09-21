//
//  PostView.swift
//  Facebook
//
//  Created by Pedro Henrique on 21/09/23.
//

import SwiftUI

struct PostView: View {
	@State var isLiked: Bool = false
	
	let postModel: PostModel
	
	var body: some View {
		VStack {
			HStack {
				Image(postModel.imageName)
					.resizable()
					.frame(width: 50, height: 50, alignment: .center)
					.aspectRatio(contentMode: .fill)
					.cornerRadius(25)
				
				VStack {
					HStack {
						Text(postModel.name)
							.foregroundStyle(.blue)
							.font(.system(size: 18, weight: .semibold, design: .default))
						Spacer()
					}
					HStack {
						Text("12 minutes ago")
							.foregroundStyle(.secondary)
						Spacer()
					}
				}
				
				Spacer()
			}
			
			Spacer()
			
			HStack {
				Text(postModel.post)
					.font(.system(size: 24, weight: .regular, design: .default))
					.multilineTextAlignment(.leading)
				Spacer()
			}
			
			Spacer()
			
			HStack {
				Button(action: {
					isLiked.toggle()
				}, label: {
					Text(isLiked ? "Liked" : "Like")
				})
				
				Spacer()
				
				Button(action: {}, label: {
					Text("Comment")
				})
				
				Spacer()
				
				Button(action: {}, label: {
					Text("Share")
				})
			}
			.padding()
		}
		.padding()
		.background(Color(.systemBackground))
		.cornerRadius(7)
	}
	
}

#Preview {
	PostView(
		postModel: PostModel(
			imageName: "person1",
			name: "Mark Zuckerberg",
			post: "Hey guys i made this cool website called Facebook"
		)
	)
}
