import Gloss

enum SortBy {
    case top
    case latest
    case popular
}

struct Articles: Decodable {

    let status: String?
    let source: String?
    let sortBy: String?
    let articles: [Article]?

    init?(json: JSON) {
        self.status = "status" <~~ json
        self.source = "source" <~~ json
        self.sortBy = "sortBy" <~~ json
        self.articles = Decoder.decode(decodableArrayForKey: "articles")(json)
    }
}
