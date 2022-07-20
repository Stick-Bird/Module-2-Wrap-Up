//
//  ContentView.swift
//  Wrap Up Challenge Module 2
//
//  Created by user on 2022-07-13.
//

import SwiftUI

struct QuoteView: View {
    
    @ObservedObject var model = QuoteModel()
    var randNum = Int.random(in: 0 ... 2)
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                    NavigationLink {
                        DetailedQuoteView()
                        
                    } label: {
                        
                VStack (alignment: .leading, spacing: 20) {
                    
                        ForEach (model.quotes) { a in
                            ZStack {
                            
                            Image (a.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
           
                            
                                VStack {
                                    Text (a.quote[randNum ])
                                        .font(.title)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal)
                                    
                                    HStack {
                                    Text ("- " + a.name)
                                        .font(.caption)
                                        .padding([.top, .leading])
                                        Spacer()
                                    }
                                }
                        }  .foregroundColor(Color.white)
                                .frame(width: .none, height: 400, alignment: .leading)
                                .clipped()
                                .cornerRadius(15)
                                .padding([.leading, .trailing])
                        }

                    }

                    
                    
                    
                    
                    
                
                }
            
            }.navigationTitle("Quotes")
        
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
