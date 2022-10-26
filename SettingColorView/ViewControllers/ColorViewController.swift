//
//  ColorViewController.swift
//  SettingColorView
//
//  Created by Геннадий Ведерников on 25.10.2022.
//

import UIKit

class ColorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? UIViewController else { return }
        
    }
}
