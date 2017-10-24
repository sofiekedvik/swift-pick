//
//  Signs.swift
//  pick
//
//  Created by Sofie Kedvik on 2017-10-22.
//  Copyright © 2017 Sofie Kedvik. All rights reserved.
//

import Foundation

class Signs: NSObject, NSCoding {
    var text: String
    var sign: String
    var heading: String
    var quote: String
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(
            text: aDecoder.decodeObject(forKey: "text") as! String,
            sign: aDecoder.decodeObject(forKey: "sign") as! String,
            heading: aDecoder.decodeObject(forKey: "heading") as! String,
            quote: aDecoder.decodeObject(forKey: "quote") as! String
        )
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: "text")
        aCoder.encode(sign, forKey: "sign")
        aCoder.encode(heading, forKey: "heading")
        aCoder.encode(quote, forKey: "quote")
    }
    
    init(text: String, sign: String, heading: String, quote: String) {
        self.text = text
        self.sign = sign
        self.heading = heading
        self.quote = quote
        
        // have to call it self for inheritence
        super.init()
    }
    
}
