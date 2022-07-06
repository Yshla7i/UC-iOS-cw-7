//
//  ContentView.swift
//  MovieApp
//
//  Created by Yousef Almutairy on 06/07/2022.
//

import SwiftUI


struct MoviesStruct: Identifiable {
    var id = UUID()
    var movieName :String
    var movieCast : [String]
}


struct ContentView: View {
    
    @State var movieArray : [MoviesStruct] = [
        MoviesStruct(movieName: "lalaLand", movieCast: ["Acttor1","Acttor2"]),
        
        MoviesStruct(movieName: "joker", movieCast: ["Acttor1","Acttor2"])
    ]
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack{
                    
                    List(movieArray, id:\.id) { movie in
                        
                        NavigationLink {
                            SecondView(movie: movie)
                        } label: {
                            movieView(movie:movie)
                        }
                        
                        
                        
                        
                        
                    }
                }
                
            }
            .navigationTitle("Movies")
        } .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct movieView: View {
    
    @State var movie : MoviesStruct
    var body: some View {
        HStack {
            Image(movie.movieName)
                .resizable()
            
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipShape(Circle())
            
            Text(movie.movieName)
        }
    }
}
