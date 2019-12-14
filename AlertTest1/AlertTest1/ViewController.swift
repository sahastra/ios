//
//  ViewController.swift
//  AlertTest1
//
//  Created by san on 2019/12/10.
//  Copyright © 2019 Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
}
    

    @IBAction func showAlert(_ sender: UIButton) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
}


