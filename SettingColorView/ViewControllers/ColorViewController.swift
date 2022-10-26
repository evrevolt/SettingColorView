//
//  ColorViewController.swift
//  SettingColorView
//
//  Created by Геннадий Ведерников on 25.10.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    ///Set new color in View
    func setNewColor(for red: CGFloat, green: CGFloat, blue: CGFloat)
}

class ColorViewController: UIViewController {
    
    @IBOutlet var colorVIew: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        
        //Получаем данные, какой цвет у нас задействован сейчас на СolorViewController. Передаем
        settingsVC.color = colorVIew.backgroundColor?.resolvedColor(with: self.traitCollection)
        settingsVC.delegate = self
    }
}

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}

// MARK: - SettingsViewControllerDelegate
extension ColorViewController: SettingsViewControllerDelegate {
    func setNewColor(for red: CGFloat, green: CGFloat, blue: CGFloat) {
        colorVIew.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
