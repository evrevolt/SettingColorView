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
    
    var colorView: ColorView!
    var color: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        settingColorView.backgroundColor = color
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
    
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        delegate.setNewColor(for: CGFloat(redSlider.value),
                             green: CGFloat(greenSlider.value),
                             blue: CGFloat(blueSlider.value))
        dismiss(animated: true)
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue

        redSlider.value = Float(color.rgba.red)
        greenSlider.value = Float(color.rgba.green)
        blueSlider.value = Float(color.rgba.blue)
        
        redLabel.text = String(round(redSlider.value * 100) / 100)
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
    }
    
    private func setColor() {
        settingColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}

