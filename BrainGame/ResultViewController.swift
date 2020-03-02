//
//  ResultViewController.swift
//  BrainGame
//
//  Created by Mark Kim on 2/26/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var expectScore: Int = 0
    
    
    

    @IBOutlet weak var resultScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            resultScore.text = "\(expectScore)"
       
    }
    
    
}
