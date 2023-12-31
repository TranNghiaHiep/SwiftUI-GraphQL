import Apollo
import Combine

final class QueryViewModel<Query: GraphQLQuery>: ObservableObject {

    @Published var data: Query.Data?
    @Published var error: Error?

    private var watcher: GraphQLQueryWatcher<Query>?

    deinit {
        watcher?.cancel()
    }
    
    func getMovies(search: String?) -> [MoviesQuery.Data.AllFilm.Film] {
        guard let data = data as? MoviesQuery.Data, let films = data.allFilms?.films else { return [] }
        
        guard let search = search, !search.isEmpty else {
            return data.allFilms?.films?.compactMap { $0 } ?? []
        }
        return films.compactMap { $0 }.filter { $0.title?.lowercased().contains(search.lowercased()) ?? false }
    }

    func fetch(search: String, query: Query, forceReload: Bool = false) {
        let cachePolicy: CachePolicy = forceReload ? .fetchIgnoringCacheCompletely : .fetchIgnoringCacheData

        Network.shared.apollo.fetch(query: query, cachePolicy: cachePolicy) { [weak self] result in
            switch result {
                case .success(let result):
                self?.data = result.data
                case .failure(let error):
                    self?.error = error
            }
        }
    }

    func watch(query: Query, forceReload: Bool = false) {
        let cachePolicy: CachePolicy = forceReload ? .fetchIgnoringCacheCompletely : .fetchIgnoringCacheData

        watcher = Network.shared.apollo.watch(query: query, cachePolicy: cachePolicy)
        { [weak self] result in
            switch result {
                case .success(let result):
                    self?.data = result.data
                case .failure(let error):
                    self?.error = error
            }
        }
    }
}
