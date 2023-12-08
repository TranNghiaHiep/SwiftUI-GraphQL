import SwiftUI

struct MovieItemView: View {
    var movie: MoviesQuery.Data.AllFilm.Film
    
    var body: some View {
        NavigationLink(destination: MovieDetailView(movie: movie)) {
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 112, height: 147)
                    .background(
                        AsyncImageView(url: URL(string: "https://via.placeholder.com/112x147")!)
                    )
                    .cornerRadius(8)
                    .offset(x: -107.50, y: 0)
                ZStack() {
                    if let title = movie.title {
                        Text(title)
                            .font(Font.custom("Montserrat", size: 16).weight(.semibold))
                            .tracking(0.12)
                            .foregroundColor(.black)
                            .offset(x: 0, y: -27)
                    }
                    HStack(spacing: 8) {
                        Text("Premium")
                            .font(Font.custom("Montserrat", size: 10).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 4, leading: 24, bottom: 4, trailing: 24))
                    .background(Color(red: 1, green: 0.53, blue: 0))
                    .cornerRadius(6)
                    .offset(x: -67, y: -59)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 43, height: 20)
                            .cornerRadius(3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 3)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.07, green: 0.80, blue: 0.85), lineWidth: 0.50)
                            )
                            .offset(x: 0, y: 0)
                        Text("PG-13")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.07, green: 0.80, blue: 0.85))
                            .offset(x: 0, y: 0.50)
                    }
                    .frame(width: 43, height: 20)
                    .offset(x: 28, y: 33)
                    ZStack() {
                        ZStack() {
                            ZStack() { }
                                .frame(width: 16, height: 16)
                        }
                        .frame(width: 16, height: 16)
                        .offset(x: -15.50, y: 0)
                        Text(movie.releaseDate?.year ?? "--")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.57, green: 0.57, blue: 0.62))
                            .offset(x: 10, y: 0.50)
                    }
                    .frame(width: 47, height: 16)
                    .offset(x: -76, y: 3)
                    ZStack() {
                        ZStack() {
                            ZStack() { }
                                .frame(width: 16, height: 16)
                        }
                        .frame(width: 16, height: 16)
                        .offset(x: -39, y: 0)
                        Text("\(movie.episodeId ?? 0) Chap")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.57, green: 0.57, blue: 0.62))
                            .offset(x: 10, y: -0.50)
                    }
                    .frame(width: 94, height: 16)
                    .offset(x: -52.50, y: 33)
                    ZStack() {
                        Text(movie.director ?? "--")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.57, green: 0.57, blue: 0.62))
                            .offset(x: -16.50, y: 0.50)
                        Text("Movie")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(.white)
                            .offset(x: 38.50, y: 0.50)
                        ZStack() {
                            ZStack() { }
                                .frame(width: 16, height: 16)
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 16, height: 16)
                        .offset(x: -49, y: 0)
                    }
                    .frame(width: 114, height: 16)
                    .offset(x: -42.50, y: 61)
                }
                .frame(width: 199, height: 138)
                .offset(x: 64, y: 0.50)
                VStack(spacing: 10) {
                    HStack(spacing: 4) {
                        ZStack() {
                            ZStack() { }
                                .frame(width: 16, height: 16)
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 16, height: 16)
                        Text("4.5")
                            .font(Font.custom("Montserrat", size: 12).weight(.semibold))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 1, green: 0.53, blue: 0))
                    }
                    .cornerRadius(6)
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                .frame(width: 55, height: 24)
                .background(Color(red: 0.15, green: 0.16, blue: 0.21).opacity(0.32))
                .cornerRadius(8)
                .offset(x: -128, y: -53.50)
            }
            .frame(width: 327, height: 147)
        }
    }
}

#Preview {
    MovieItemView(movie: .init(id: "asdhaskh"))
}
