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
    let textColors = [UIColor.red, UIColor.blue, UIColor.yellow]

    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.4
        pulse.fromValue = 0.98
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = .infinity
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
    }


    @IBOutlet weak var timer: UILabel!
    var time = 2
    var timer1 = Timer()
    
    
    @IBOutlet weak var pauseOutlet: UIButton!
    
    @IBOutlet weak var color1Label: UILabel!
    @IBOutlet weak var color2Label: UILabel!
    
    @objc func action(){
        if time != 0 {
            time -= 1
            timer.text = "Timer: \(String(time))"
        } else {
            timer1.invalidate()
            time = 2
            performSegue(withIdentifier: "toResults", sender: self)
        }
    }
    
    @IBAction func pausePressed(_ sender: UIButton) {
        color1Label.text = colors.randomElement()
        color2Label.text = colors.randomElement()
        color2Label.textColor = textColors.randomElement()
        
//        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        color1Label.text = colors.randomElement()
        color2Label.text = colors.randomElement()
        color2Label.textColor = textColors.randomElement()
        
         timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)


    }


}

