//
//  ViewController.swift
//  Prework
//
//  Created by Efaz on 2/21/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var peopleAmount: UITextField!
    @IBOutlet weak var peoplePayAmount: UILabel!
    var total_amount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        total_amount = total
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateAmountPerPerson(_ sender: Any) {
        let people = Int(peopleAmount.text!) ?? 0
        let split_pay = total_amount / Double(people)
        
        peoplePayAmount.text = String(format: "$%.2f", split_pay)
    }
    
}

