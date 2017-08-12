//
//  Wage.swift
//  window-shopper
//
//  Created by Tanveer Singh on 12/08/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

//Business model
import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //forWage and andPrice are the parameter names. wage, price are the variable names
        return Int(ceil(price/wage))
    }
}
