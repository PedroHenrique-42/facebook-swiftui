//
//  StoriesView.swift
//  Facebook
//
//  Created by Pedro Henrique on 21/09/23.
//

import SwiftUI

struct StoriesView: View {
	let stories: [String]
	
	var body: some View {
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
	}
}

#Preview {
	StoriesView(stories: ["story1", "story2", "story3", "story1", "story2", "story3"])
}
