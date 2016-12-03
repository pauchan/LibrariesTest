import XCTest
import Quick
import Nimble


@testable import MerryChristmas

class MerryChristmasTests: XCTestCase {

    var articles: Articles?

    override func setUp() {
        super.setUp()
        let json = dataFrom(name: "Articles")
        articles = Articles(json: json)
    }
    
    func testArticles() {

        expect(self.articles?.status).to(equal("ok"))

        
    }

//    "status": "ok",
//    "source": "the-next-web",
//    "sortBy": "latest",

}
