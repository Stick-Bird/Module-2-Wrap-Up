//
//  DataServices.swift
//  Wrap Up Challenge Module 2
//
//  Created by user on 2022-07-13.
//

import Foundation
import SwiftUI

class DataServices {
    
    static func getData () -> [Quote]{
        
        let pathString = Bundle.main.path(forResource: "quote", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
        
            let decoder = JSONDecoder()
        
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for q in quoteData {
                    q.id = UUID()
                }
                
                return quoteData
                
            }catch {
                print (error)
            }
        
        } catch {
            print (error)
        }
        return [Quote]() 
    }
}
