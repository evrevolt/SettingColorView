//
//  ColorViewController.swift
//  SettingColorView
//
//  Created by Геннадий Ведерников on 25.10.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    //Set new color in View
    func setNewColor(_ color: UIColor)
}

class ColorViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }
}

// MARK: - SettingsViewControllerDelegate
extension ColorViewController: SettingsViewControllerDelegate {
    func setNewColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
