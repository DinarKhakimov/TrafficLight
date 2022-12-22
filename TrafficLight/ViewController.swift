//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dinar Khakimov on 15.12.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        startButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
    }

    @IBAction func startButtonPressed() {
            startButton.setTitle("Next", for: .normal)
            
            switch currentLight {
            case .red:
                redLight.alpha = lightIsOn
                greenLight.alpha = lightIsOff
                currentLight = .yellow
            case .yellow:
                yellowLight.alpha = lightIsOn
                redLight.alpha = lightIsOff
                currentLight = .green
            case .green:
                greenLight.alpha = lightIsOn
                yellowLight.alpha = lightIsOff
                currentLight = .red
            }
        }
    }
    

