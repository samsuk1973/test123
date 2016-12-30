
import ObjectMapper
import Foundation

class ProvincesWrapper: NSObject, Mappable {
    var userId: NSNumber?
    var identifier: NSNumber?
    var title: String?
    var body: String?
    // MARK: - object mapping
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId      <- map["userId"]
        identifier  <- map["id"]
        title       <- map["title"]
        body        <- map["body"]
    }
    
}
