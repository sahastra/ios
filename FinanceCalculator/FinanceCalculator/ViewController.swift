//
//  ViewController.swift
//  FinanceCalculator
//
//  Created by macconted on 2019/12/12.
//  Copyright © 2019 macconted. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtPrincipal: UITextField!
    @IBOutlet weak var txtInterest: UITextField!
    @IBOutlet weak var txtYears: UITextField!
    
    @IBOutlet weak var lblFVSimple: UILabel!
    @IBOutlet weak var lblFVCompound: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         txtPrincipal.becomeFirstResponder()
        //txtInterest.becomeFirstResponder()
        txtPrincipal.delegate = self
        txtInterest.delegate = self
        txtYears.delegate = self
    }

    @IBAction func btnCalculate(_ sender: UIButton) {
        
        let P = Double(txtPrincipal.text!)
        let I = Double(txtInterest.text!)
        let N = Double(txtYears.text!)
        
        //FV Simple = (P x I x N) + P
        
        lblFVSimple.text = String(format: "%.2f", (P!*I!/100*N!) + P!)
        
        //FV Compund = P (1 + r/n) power nt,
        //where n = number of times intresest is compounded per year,
        //if n = 1. then FV Compund = P (1 + r) power t
        
        lblFVCompound.text = String(format: "%.2f", (P!*pow((1+I!/100),N!)))
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}

