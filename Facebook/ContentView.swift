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
	let facebookBlue = Color(red: 23/255.0, green: 120/255.0, blue: 242/255.0, opacity: 1)
	
	var body: some View {
		VStack {
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
			
			TextField("Search...", text: $text)
				.padding(7)
				.background(Color(.systemGray5))
				.cornerRadius(13)
				.padding(.horizontal, 15)
			
			ZStack {
				Color(.secondarySystemBackground)
				
				ScrollView(.vertical) {
					VStack {
						ScrollView(.horizontal, showsIndicators: false) {
							HStack(spacing: 3) {
								ForEach(stories, id: \.self) { name in
									Image(name)
										.resizable()
										.aspectRatio(contentMode: .fill)
										.frame(width: 140, height: 200, alignment: .center)
										.background(.red)
										.clipped()
								}
							}
							.padding()
						}
						FBPost()
						Spacer()
					}
				}
			}
			
			Spacer()
		}
	}
}

struct FBPost: View {
	var body: some View {
		VStack {
			HStack {
				Image("person1")
					.resizable()
					.frame(width: 50, height: 50, alignment: .center)
					.aspectRatio(contentMode: .fill)
					.cornerRadius(25)
				
				VStack {
					HStack {
						Text("Mark Zuckerberg")
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
				Text("Hey guys i made this cool website called Facebook")
					.font(.system(size: 24, weight: .regular, design: .default))
					.multilineTextAlignment(.leading)
				Spacer()
			}
			
			HStack {
				
			}
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(text: .constant(""))
	}
}
