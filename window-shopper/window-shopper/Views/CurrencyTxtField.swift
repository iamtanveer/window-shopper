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
    override func draw(_ rect: CGRect) {
        //never run this function when empty
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: (CGRect(x: 10, y: (frame.size.height / 2) - (size / 2), width: size, height: size)))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8132410049, green: 0.8084067702, blue: 0.816957593, alpha: 0.7977311644)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 7.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
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
        clipsToBounds = true
        
        if placeholder == nil{
            placeholder = " "
        }//safety check for force unwrapping
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    

}
