//
//  ViewController.swift
//  someStuff
//
//  Created by Светлана Сенаторова on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bluLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var violetLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        stopButton.layer.cornerRadius = 10
        
        bluLight.layer.cornerRadius = bluLight.layer.frame.width / 2
        bluLight.alpha = 0
        greenLight.layer.cornerRadius = greenLight.layer.frame.width / 2
        greenLight.alpha = 0
        violetLight.layer.cornerRadius = violetLight.layer.frame.width / 2
        violetLight.alpha = 0
        orangeLight.layer.cornerRadius = orangeLight.layer.frame.width / 2
        orangeLight.alpha = 0
    }
    
    
    @IBAction func startProgram(_ sender: UIButton) {
        
        switch counter {
        case 0:
            bluLight.alpha = 1
            counter += 1
        case 1:
            greenLight.alpha = 1
            counter += 1
        case 2:
            violetLight.alpha = 1
            counter += 1
        default:
            orangeLight.alpha = 1
            counter = 0
        }
        
    }
    
    
    @IBAction func stopProgram(_ sender: UIButton) {
        
        switch counter {
        case 0:
            bluLight.alpha = 0
            counter += 1
        case 1:
            greenLight.alpha = 0
            counter += 1
        case 2:
            violetLight.alpha = 0
            counter += 1
        default:
            orangeLight.alpha = 0
            counter = 0
        }
        
    }
    

}

