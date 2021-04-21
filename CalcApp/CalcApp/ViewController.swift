//
//  ViewController.swift
//  CalcApp
//
//  Created by Yoshikazu Tsuka on 2021/04/17.
//

import UIKit

class ViewController: UIViewController {

    
    var carModel = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    @IBAction func doAction(_ sender: Any) {
        carModel.drive()
        carModel.move(toBack: "バックします")
        let totalWheel = carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数 \(totalWheel)")
    }
}

