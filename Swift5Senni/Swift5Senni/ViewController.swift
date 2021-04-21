//
//  ViewController.swift
//  Swift5Senni
//
//  Created by Yoshikazu Tsuka on 2021/04/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    
    @IBAction func plus(_ sender: Any) {
        
        count += 1
   
        if count == 10 {
            
            
            //画面遷移
//            performSegue(withIdentifier: "next", sender: nil)
            
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            nextVC.count2 = count
            
            navigationController?.pushViewController(nextVC, animated: true)
            
            
            count = 0
        }
        
        label.text = String(count)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        let nextVC = segue.destination as! NextViewController
//        nextVC.count2 = count
//    }
    
}

