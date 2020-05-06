//
//  ContentView.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct MovieView: View {
//    var moviesNames: [String] = ["Toy Story","Alaadin","Coco"]
//    var movieCharacters = [[""]]
    var body: some View {
        NavigationView {
            List(movies){ movie in
                NavigationLink(destination: MovieDetailsView(movie: movie)){
                    MovieRow(movie: movie)
                }
               
            }.navigationBarTitle("Movies")
        }.accentColor(.white)
    }
}



struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack{
            Image(movie.name)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            Text(movie.name)
                .font(.title)
                .bold()
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MovieView()
            MovieRow(movie: movies[0]).previewLayout(.sizeThatFits)
        }
    }
}
