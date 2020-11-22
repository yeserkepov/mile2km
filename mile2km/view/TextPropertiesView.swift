//
//  TextPropertiesView.swift
//  mile2km
//
//  Created by User on 11/20/20.
//

import UIKit

@IBDesignable
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
            
            clipsToBounds = true
                 
//            if placeholder == nil {
//            placeholder = "nil"
//            }
//            
//            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white] )
//            attributedPlaceholder = place
//            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
            }
    
}
    


