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
    var time = 5
    var timer1 = Timer()

    
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
    
    @IBOutlet weak var pauseOutlet: UIButton!
    
    @IBOutlet weak var color1Label: UILabel!
    @IBOutlet weak var color2Label: UILabel!
    
    @objc func action(){
        if time != 0 {
            time -= 1
            timer.text = "Timer: \(String(time))"
        } else {
            time = 5
            timer1.invalidate()
            
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
    @IBAction func goBackToVC2(segue:UIStoryboardSegue){
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }

}

