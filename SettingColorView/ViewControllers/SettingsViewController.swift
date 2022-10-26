//
//  ViewController.swift
//  SettingColorView
//
//  Created by Геннадий Ведерников on 20.10.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingColorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        setColor()
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
    
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setColor() {
        settingColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

