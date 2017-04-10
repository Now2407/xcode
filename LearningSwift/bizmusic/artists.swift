import UIKit

class artists {
    
    var date: String!
    var month: String!
    var name: String!
    var genre: String!
    var miles: String!
    var location: String!
    
    
    init(dict: NSDictionary){
        
        self.date = dict["date"] as! String
        self.month = dict["month"] as! String
        self.name = dict["name"] as! String
        self.genre = dict["genre"] as! String
        self.miles = dict["miles"] as! String
        self.location = dict["location"] as! String
        
        
    }
    
    
    
}