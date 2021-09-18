//
//  Math.swift
//  BasicUIComponents
//
//  Created by Mert Demirtaş on 18.09.2021.
//

import Foundation




class MathFunctions {
    
    var result = 0.0
    
    func operations(previousNumber: String, currentNumber: String, config: Int) -> String{
    
    switch(config){
    
    case 1:
        result = Double(previousNumber)! + Double(currentNumber)!
        return String(result)
    
    case 2:
        result = Double(previousNumber)! / Double(currentNumber)!
        return String(result)
    
    case 3:
        result = Double(previousNumber)! * Double(currentNumber)!
        return String(result)
        
    
    case 4:
        result = Double(previousNumber)! - Double(currentNumber)!
        return String(result)
    
    default:
        return ""
    }
    
    
    
    
    
}

}
