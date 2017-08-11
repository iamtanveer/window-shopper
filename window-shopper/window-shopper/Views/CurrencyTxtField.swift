//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Tanveer Singh on 11/08/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2498394692)
        layer.cornerRadius = 7.0
        textAlignment = .center
        
        if placeholder == nil{
            placeholder = " "
        }//safety check for force unwrapping
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    

}
