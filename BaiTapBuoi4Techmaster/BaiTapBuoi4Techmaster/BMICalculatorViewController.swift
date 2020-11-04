//
//  BMICalculatorViewController.swift
//  BaiTapBuoi4Techmaster
//
//  Created by Nguyen Trung on 10/29/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import UIKit

class BMICalculatorViewController: UIViewController {
    
    //MARK: - Properties
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightViewSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var maleView: UIView!
    @IBOutlet weak var femaleView: UIView!
    @IBOutlet weak var heightView: UIView!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var weightViewStepper: UIStepper!
    @IBOutlet weak var ageViewStepper: UIStepper!
    @IBOutlet weak var caculatorViewButton: UIButton!
    
    var height: Float = 150
    var weight: Float = 50
    var age: Float = 20
    var bmi: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BMI"
        autoLayoutBMICaculator()
        chooseMale()
        chooseFemale()
        
    }
    
    //MARK:- AutoLayout BMIcaculator
    //statusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //autoLayout
    func autoLayoutBMICaculator(){
        heightLabel.text = "150cm"
        weightLabel.text = "50"
        ageLabel.text = "20"
        maleView.layer.cornerRadius = 10
        femaleView.layer.cornerRadius = 10
        heightView.layer.cornerRadius = 10
        weightView.layer.cornerRadius = 10
        ageView.layer.cornerRadius = 10
        weightViewStepper.layer.cornerRadius = 8
        ageViewStepper.layer.cornerRadius = 8
        caculatorViewButton.layer.cornerRadius = 8

    }
    //MARK:- action BMIcaculator
    //tap choose male
    private func chooseMale(){
        let tapgetureMale = UITapGestureRecognizer(target: self, action: #selector(tapMaleView))
        maleView.addGestureRecognizer(tapgetureMale)
    }
    
    @objc func tapMaleView(){
        maleView.backgroundColor = UIColor(red: 0.141, green: 0.148, blue: 0.229, alpha: 1.0)
        femaleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
    }
    
    //tap choose Female
    private func chooseFemale(){
        let tapgetureFemale = UITapGestureRecognizer(target: self, action: #selector(tapFemaleView))
        femaleView.addGestureRecognizer(tapgetureFemale)
    }
    @objc func tapFemaleView(){
        femaleView.backgroundColor = UIColor(red: 0.141, green: 0.148, blue: 0.229, alpha: 1.0)
        maleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(Int(sender.value))+"cm"
        height = sender.value
    }
    @IBAction func weightStepper(_ sender: UIStepper) {
        weightLabel.text = String(Int(sender.value))
        weight = Float(sender.value)
        
    }
    @IBAction func ageStepper(_ sender: UIStepper) {
        ageLabel.text = String(Int(sender.value))
        age = Float(sender.value)
    }
    
    
    @IBAction func caculatorButton(_ sender: UIButton) {
        bmi = weight/(powf(height/100, 2))
        //Cach 1: ko an toan neu 2 man hinh o 2 storyboard khac nhau
        //let vcBMI = self.storyboard?.instantiateViewController(withIdentifier: "ResultBMIViewController") as! ResultBMIViewController
        
        //Cach 2: Định danh rõ mainStoryboard
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vcResult = mainStoryboard.instantiateViewController(withIdentifier: "ResultBMIViewController") as! ResultBMIViewController
        
        switch bmi {
              case 0..<16:
                  vcResult.evaluate = "Severe Thinness"
                  
                  break
              case 16..<17:
                  vcResult.evaluate = "Moderate Thinness"
                  
                  break
              case 17..<18.5:
                  vcResult.evaluate = "Mild Thinness"
                  
                  break
              case 18.5..<25:
                  vcResult.evaluate = "Normal"
                  
                  break
              case 25..<30:
                  vcResult.evaluate = "Overweight"
                  
                  break
              case 30..<35:
                  vcResult.evaluate = "Obese Class I"
                  
                  break
              case 35..<40:
                  vcResult.evaluate = "Obese Class II"
                  
                  break
              case 40..<100:
                  vcResult.evaluate = "Obese Class III"
                  
                  break
              default:
                  print("Thông số nhập không phù hợp")
              }
        
        // lấy 2 chữ số sau dấu ","
        let numberOfPlaces = 2.0
        let multiplier = pow(10.0, numberOfPlaces)
        let rounded = round(Double(bmi) * multiplier) / multiplier
        
        vcResult.index = String(rounded)
        vcResult.modalPresentationStyle = .fullScreen
        present(vcResult, animated: true, completion: nil)
    }
}
