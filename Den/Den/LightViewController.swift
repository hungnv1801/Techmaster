//
//  LightViewController.swift
//  Den
//
//  Created by Nguyen Trung on 10/23/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import UIKit

class LightViewController: UIViewController {

    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    @IBOutlet weak var isOnButton: UIButton!
    
    var isOn : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isOnSwitch.isOn = true
        isOn = true
        bulbImageView.image = UIImage(named: "bulb-on")
        
        isOnButton.setTitle("Tat den", for: .normal)
    }
    
    @IBAction func offBulb(_ sender: UISwitch) {
        if sender.isOn {
            bulbImageView.image = UIImage(named: "bulb-on")
            isOnButton.setTitle("Tat den", for: .normal)
        }else{
            bulbImageView.image = UIImage(named: "bulb-off")
            isOnButton.setTitle("Bat den", for: .normal)
        }
    }
    
    @IBAction func onPress(_ sender: Any) {

        if isOn {
            isOnButton.setTitle("Bat den", for: .normal)
            bulbImageView.image = UIImage(named: "bulb-off")
            isOnSwitch.isOn = false
        } else {
            isOnButton.setTitle("Tat den", for: .normal)
            bulbImageView.image = UIImage(named: "bulb-on")
            isOnSwitch.isOn = true
        }
        isOn = !isOn
    }
    
}
