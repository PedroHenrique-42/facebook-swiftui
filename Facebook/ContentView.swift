//
//  ContentView.swift
//  Facebook
//
//  Created by Pedro Henrique on 13/09/23.
//

import SwiftUI

struct ContentView: View {
	
	@Binding var text: String
	let stories: [String] = ["story1", "story2", "story3", "story1", "story2", "story3"]
	let posts: [PostModel] = [
		PostModel(
			imageName: "person1",
			name: "Mark Zuckerberg",
			post: "Hey guys i made this cool website called Facebook"
		),
		PostModel(
			imageName: "person2",
			name: "Jeff Bezos",
			post: "Hey guys i made this cool e-commerce called Amazon"
		),
		PostModel(
			imageName: "person3",
			name: "Bill Gates",
			post: "Hey guys i made this cool OS called Windows"
		)
	]
	
	var body: some View {
		VStack {
			HeaderView()
			
			TextField("Search...", text: $text)
				.padding(7)
				.background(Color(.systemGray5))
				.cornerRadius(13)
				.padding(.horizontal, 15)
			
			ZStack {
				Color(.secondarySystemBackground)
				
				ScrollView(.vertical) {
					VStack {
						StoriesView(stories: stories)
						
						ForEach(posts, id: \.self) { model in
							PostView(postModel: model)
							Spacer()
						}
					}
				}
			}
			
			Spacer()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(text: .constant(""))
	}
}
