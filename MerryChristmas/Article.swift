import Gloss

struct Article: Decodable {

    let author: String?
    let description: String?
    let title: String?
    let url: URL?
    let urlToImage: URL?
    let publishedAt: Date?

    init?(json: JSON) {
        self.author = "author" <~~ json
        self.description = "description" <~~ json
        self.title = "title" <~~ json
        self.url = Decoder.decode(urlForKey: "url")(json)
        self.urlToImage = Decoder.decode(urlForKey: "urlToImage")(json)
        self.publishedAt = Decoder.decode(dateISO8601ForKey: "publishedAt")(json)
    }
}


