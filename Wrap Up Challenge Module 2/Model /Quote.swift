//
//  Quote.swift
//  Wrap Up Challenge Module 2
//
//  Created by user on 2022-07-13.
//

import Foundation

class Quote : Identifiable, Decodable {
    
    var id : UUID?
    var name : String
    var image : String 
    var quote : [String]
    
    /*static func testData() -> Quote {
        
        let testQuote = Quote( id: UUID(), name: "Test Name", image: "focus" , quote: ["quote 1", "quote 2"])
        
        return testQuote
    }*/

}
