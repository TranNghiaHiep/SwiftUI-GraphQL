import SwiftUI

struct MoviesView: View {
    @StateObject var queryViewModel = QueryViewModel<MoviesQuery>()
    @State var query: String = ""
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            let movies = queryViewModel.getMovies(search: searchText)
            List(movies, id: \.id) { film in
                MovieItemView(movie: film)
            }
            .refreshable(action: {
                queryViewModel.fetch(search: searchText, query: MoviesQuery())
            })
            .navigationBarTitle("Movies")
            .searchable(text: $searchText)
        }.onAppear {
            queryViewModel.fetch(search: searchText, query: MoviesQuery())
        }
    }

}

//#Preview {
//    MoviesView()
//}
