//
//  DetailedQuoteView.swift
//  Wrap Up Challenge Module 2
//
//  Created by user on 2022-07-13.
//

import SwiftUI

struct DetailedQuoteView: View {
    
    var body: some View {
        
        var quote = Quote?
        
        // If no meditation set, can't display detail
        
       if let author = quote{
        
            VStack(alignment: .leading, spacing: 20.0) {
               
                
                // Author name
                Text(author.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Quotes
                ForEach (author.quote, id: \.self) { q in
                    Text(q)
                }
            
                Spacer()
                
            }.padding()
        }
    }
}

struct DetailedQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedQuoteView()
    }
}
