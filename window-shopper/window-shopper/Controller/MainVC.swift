//
//  ViewController.swift
//  window-shopper
//
//  Created by Tanveer Singh on 11/08/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hrsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9546861053, green: 0.5151016712, blue: 0.4583972692, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
    
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden=true
        hrsLbl.isHidden=true
        
    }

    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hrsLbl.isHidden = true
        priceTxt.text = ""
        wageTxt.text = ""
    }
    @objc func calculate (){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden=false
                hrsLbl.isHidden=false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
}

