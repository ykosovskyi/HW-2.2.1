//
//  ViewController.swift
//  HW 2.2.1
//
//  Created by Евгений Косовский on 07.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var alphaValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.value = 255
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.value = 255
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.value = 255
        
        alphaSlider.minimumTrackTintColor = .white
        alphaSlider.minimumValue = 0.0
        alphaSlider.maximumValue = 1.0
        alphaSlider.value = 1.0
    }

    
    @IBAction func sliderAction(_ sender: UISlider!) {
        switch(sender.tag) {
        case 0: redColorValue.text = String(Int(redSlider.value))
        case 1: greenColorValue.text = String(Int(greenSlider.value))
        case 2: blueColorValue.text = String(Int(blueSlider.value))
        case 3: alphaValue.text = NSString(format:"%.1f", alphaSlider.value) as String
        default: break
        }
        
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: CGFloat(alphaSlider.value))
    }
}

