//
//  SecondView.swift
//  MovieApp
//
//  Created by Yousef Almutairy on 06/07/2022.
//

import SwiftUI

struct SecondView: View {
    @State var movie : MoviesStruct
    var body: some View {
        
        ZStack{
            Color.black.opacity(0.3)
                .background(Image(movie.movieName)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                            
                )
                .ignoresSafeArea()
            
            VStack{
                
                Image(movie.movieName)
                    .resizable()
                
                    .frame(width: 200, height: 200)
                    .overlay(Circle().stroke(Color.white,lineWidth: 6))
                    .clipShape(Circle())
                
                Text(movie.movieName)
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
                
                ScrollView(.horizontal,showsIndicators: true) {
                    VStack{
                        ForEach(movie.movieCast, id: \.self) {
                            cast in
                            Image(cast)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            
                            
                            Text(cast)
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(movie: MoviesStruct(movieName: "" , movieCast: [""]))
    }
}
