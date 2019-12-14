//
//  ViewController.swift
//  TapTest1
//
//  Created by san on 2019/12/10.
//  Copyright © 2019 Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap)
    }
    
    @objc func doubleTapped() {
        print ("Tapped twice ...")
    }


}

