import Apollo
import Foundation

import Apollo
import Foundation

final class Network {
    static let shared = Network()

    private(set) lazy var apollo: ApolloClient = {
        return ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
    }()
}
