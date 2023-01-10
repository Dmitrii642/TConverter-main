//
//  ViewController.swift
//  TConverter
//
//  Created by Дмитрий Яковлев on 09.01.2023.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var celisusLabel: UILabel!
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            
            
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let temperatureCelsius = Int(round(sender.value))
        celisusLabel.text = "\(temperatureCelsius)ºC"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
       
    }
    
}

