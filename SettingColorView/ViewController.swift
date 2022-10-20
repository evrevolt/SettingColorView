//
//  ViewController.swift
//  SettingColorView
//
//  Created by Геннадий Ведерников on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSlider()
        
    }
    
    
    @IBAction func redSliderAction() {
        redLabel.text = String(round(redSlider.value * 100) / 100)
        setColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        setColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        setColor()
    }
    
    //Я конечно понимаю, что дублирования кода быть не должно, но как это решить не знаю(((
    private func setupSlider() {
        
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .white
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 1
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .white
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 1
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .white
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 1
    }
    
    func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    
}

