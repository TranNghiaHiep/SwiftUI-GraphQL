import SwiftUI
import Apollo

struct MovieDetailView: View {
    var movie: MoviesQuery.Data.AllFilm.Film
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack() {
                Text(movie.title ?? "")
                    .font(Font.custom("Montserrat", size: 20).weight(.semibold))
                    .tracking(0.12)
                    .foregroundColor(.orange)
                    .offset(x: 0, y: 0)
            }
            
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: 552)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 0.12, green: 0.11, blue: 0.17).opacity(0.20), Color(red: 0.12, green: 0.11, blue: 0.17)]), startPoint: .top, endPoint: .bottom)
                    )
                    .offset(x: 0, y: 0)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 205, height: 287)
                    .background(
                        AsyncImageView(url: URL(string: "https://via.placeholder.com/205x287"))
                    )
                    .cornerRadius(12)
                    .offset(x: 0, y: -24.50)
            }
            .frame(height: 552)
            
            ZStack() {
                HStack(spacing: 20) {
                    HStack() {
                        Image(systemName: "calendar")
                        Text(movie.releaseDate?.year ?? "--")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.57, green: 0.57, blue: 0.62))
                    }
                    HStack() {
                        Image(systemName: "clock")
                        Text("\(movie.episodeId ?? 0) chap")
                            .font(Font.custom("Montserrat", size: 12).weight(.medium))
                            .tracking(0.12)
                            .foregroundColor(Color(red: 0.57, green: 0.57, blue: 0.62))
                    }
                }
                .frame(height: 32)
            }
            
            VStack {
                Text("Story Line")
                    .font(Font.custom("Montserrat", size: 20).weight(.semibold))
                    .tracking(0.12)
                    .foregroundColor(.black)
                    .padding([.leading])
                Spacer(minLength: 20)
                Text(movie.openingCrawl?.replacingOccurrences(of: "\r\n", with: "") ?? "It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire's\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire's\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....")
                    .font(Font.custom("Montserrat", size: 14))
                    .tracking(0.12)
                    .foregroundColor(.black)
                    .padding([.leading, .bottom, .trailing])
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    MovieDetailView(movie: .init(id: "asdhaskh"))
}
