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
    
    @IBOutlet weak var color1Label: UILabel!
    @IBOutlet weak var color2Label: UILabel!
    
    @IBAction func pausePressed(_ sender: UIButton) {
        print("paused")
        color1Label.text = colors.randomElement()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        color1Label.text = colors.randomElement()
        color2Label.text = colors.randomElement()


    }


}

