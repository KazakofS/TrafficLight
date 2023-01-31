//
//  ViewController.swift
//  TrafficLight
//
//  Created by Сергей Казаков on 30.01.2023.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}
final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var viewButton: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let LightOn: CGFloat = 1
    
    private var color = Colors.red

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        redLight.alpha = lightOff
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        yellowLight.alpha = lightOff
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        greenLight.alpha = lightOff
        viewButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonTap() {
        viewButton.setTitle("NEXT", for: .normal)
        switch color {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = LightOn
            color = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = LightOn
            color = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = LightOn
            color = .red
        }
    }
}






