//
//  MovieDetailsView.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
//    var movieName: String
//    var movieCharacters: [String]
    var movie: Movie
    var body: some View {
        ZStack {
            Image(movie.name)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 40)
            Color
                .black
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
          
            VStack{
                Image(movie.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    
                Text(movie.name)
            .font(.largeTitle)
            .bold()
                
                Text(movie.characters.joined(separator: ", "))
            
            }.foregroundColor(.white)
            .shadow(radius: 12)
        }
        
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movies[0])
    }
}
