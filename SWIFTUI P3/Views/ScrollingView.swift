//
//  ScrollingView.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct ScrollingView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                Image(movies[0].name)
                    .resizable()
                    .scaledToFill()
                Image(movies[1].name)
                    .resizable()
                    .scaledToFill()
                Image(movies[2].name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}


struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
