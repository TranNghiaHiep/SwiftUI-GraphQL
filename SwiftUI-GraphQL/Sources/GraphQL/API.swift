// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class MoviesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Movies {
      allFilms {
        __typename
        films {
          __typename
          id
          title
          episodeID
          openingCrawl
          director
          producers
          releaseDate
          edited
          created
        }
      }
    }
    """

  public let operationName: String = "Movies"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allFilms", type: .object(AllFilm.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allFilms: AllFilm? = nil) {
      self.init(unsafeResultMap: ["__typename": "Root", "allFilms": allFilms.flatMap { (value: AllFilm) -> ResultMap in value.resultMap }])
    }

    public var allFilms: AllFilm? {
      get {
        return (resultMap["allFilms"] as? ResultMap).flatMap { AllFilm(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allFilms")
      }
    }

    public struct AllFilm: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["FilmsConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("films", type: .list(.object(Film.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(films: [Film?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "FilmsConnection", "films": films.flatMap { (value: [Film?]) -> [ResultMap?] in value.map { (value: Film?) -> ResultMap? in value.flatMap { (value: Film) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? {
        get {
          return (resultMap["films"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Film?] in value.map { (value: ResultMap?) -> Film? in value.flatMap { (value: ResultMap) -> Film in Film(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Film?]) -> [ResultMap?] in value.map { (value: Film?) -> ResultMap? in value.flatMap { (value: Film) -> ResultMap in value.resultMap } } }, forKey: "films")
        }
      }

      public struct Film: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Film"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("episodeID", type: .scalar(Int.self)),
            GraphQLField("openingCrawl", type: .scalar(String.self)),
            GraphQLField("director", type: .scalar(String.self)),
            GraphQLField("producers", type: .list(.scalar(String.self))),
            GraphQLField("releaseDate", type: .scalar(String.self)),
            GraphQLField("edited", type: .scalar(String.self)),
            GraphQLField("created", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, title: String? = nil, episodeId: Int? = nil, openingCrawl: String? = nil, director: String? = nil, producers: [String?]? = nil, releaseDate: String? = nil, edited: String? = nil, created: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Film", "id": id, "title": title, "episodeID": episodeId, "openingCrawl": openingCrawl, "director": director, "producers": producers, "releaseDate": releaseDate, "edited": edited, "created": created])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of an object
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The title of this film.
        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// The episode number of this film.
        public var episodeId: Int? {
          get {
            return resultMap["episodeID"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "episodeID")
          }
        }

        /// The opening paragraphs at the beginning of this film.
        public var openingCrawl: String? {
          get {
            return resultMap["openingCrawl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "openingCrawl")
          }
        }

        /// The name of the director of this film.
        public var director: String? {
          get {
            return resultMap["director"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "director")
          }
        }

        /// The name(s) of the producer(s) of this film.
        public var producers: [String?]? {
          get {
            return resultMap["producers"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "producers")
          }
        }

        /// The ISO 8601 date format of film release at original creator country.
        public var releaseDate: String? {
          get {
            return resultMap["releaseDate"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "releaseDate")
          }
        }

        /// The ISO 8601 date format of the time that this resource was edited.
        public var edited: String? {
          get {
            return resultMap["edited"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "edited")
          }
        }

        /// The ISO 8601 date format of the time that this resource was created.
        public var created: String? {
          get {
            return resultMap["created"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "created")
          }
        }
      }
    }
  }
}
