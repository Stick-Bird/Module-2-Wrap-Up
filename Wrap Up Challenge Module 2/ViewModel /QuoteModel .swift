//
//  QuoteModel .swift
//  Wrap Up Challenge Module 2
//
//  Created by user on 2022-07-13.
//

import Foundation

class QuoteModel : ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init () {
        
        self.quotes = DataServices.getData()
        
    }
}
