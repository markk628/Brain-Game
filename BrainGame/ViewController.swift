//
//  ViewController.swift
//  BrainGame
//
//  Created by Mark Kim on 2/20/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors = ["red", "blue", "yellow"]

    @IBOutlet weak var pauseOutlet: UIButton!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func pausePressed(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0..<colors.count)
        print("paused")
        helloLabel.text = colors[randomIndex]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

