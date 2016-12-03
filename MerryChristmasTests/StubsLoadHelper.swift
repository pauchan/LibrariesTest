import Foundation

func dataFrom(name: String) -> NSData? {
    guard let filepath = Bundle.main.path(forResource: name, ofType: "json") else { return nil }
    let data = NSData(contentsOfFile: filepath)
    let testJSON = JSONSerialization.jsonObject(with: data, options: <#T##JSONSerialization.ReadingOptions#>.)
    guard let testJSON = JSONSerialization.jsonObject(with: testJSONData, options: ) as? JSON else { return nil }
    }
    return tes
}
