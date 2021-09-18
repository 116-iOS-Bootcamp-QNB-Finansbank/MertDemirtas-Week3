//
//  CalculatorViewController.swift
//  BasicUIComponents
//
//  Created by Semih Emre ÜNLÜ on 11.09.2021.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    let operations = MathFunctions()
    
    
    var previousNumber = ""
    var currentNumber = ""
    var config = 0
    var control = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //@IBOutlet var digitButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private var isTyping: Bool = false
    
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        if(control==1){
            resultLabel.text = ""
            control=0
        }
        let digit = String(sender.tag)
        let displayText = resultLabel.text ?? ""

        
        if isTyping {
            resultLabel.text = displayText + digit
        } else {
            resultLabel.text = digit
            isTyping.toggle()
        }
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        
        let value = NSString(string: resultLabel.text ?? "0").doubleValue
        resultLabel.text = String(sqrt(value))
    }
    
    
    
    @IBAction func acButton(_ sender: UIButton) {
        resultLabel.text = ""
    }
    
    
    @IBAction func plusButton(_ sender: UIButton) {
        previousNumber = resultLabel.text!
        resultLabel.text = ""
        config = 1
    }
    
    
    @IBAction func divideButton(_ sender: UIButton) {
        previousNumber = resultLabel.text!
        resultLabel.text = ""
        config = 2
    }
    
    
    @IBAction func crossButton(_ sender: UIButton) {
        previousNumber = resultLabel.text!
        resultLabel.text = ""
        config = 3
    }
    
    
    @IBAction func minusButton(_ sender: UIButton) {
        previousNumber = resultLabel.text!
        resultLabel.text = ""
        config = 4
    }
    
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        currentNumber = resultLabel.text!
        resultLabel.text = operations.operations(previousNumber: previousNumber, currentNumber: currentNumber, config: config)
        control = 1

            
    }
        
}
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


