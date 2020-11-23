//
//  TextPropertiesView.swift
//  mile2km
//
//  Created by User on 11/20/20.
//

import UIKit

class TextProperties: UITextView {
        
        override func prepareForInterfaceBuilder() {
            customeView()
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()
            customeView()
        }
      
        func customeView () {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3)
            textAlignment = .center
            
            layer.cornerRadius = 5.5
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            clipsToBounds = true
        }
    
}
    


