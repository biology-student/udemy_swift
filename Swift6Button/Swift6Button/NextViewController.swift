//
//  NextViewController.swift
//  Swift6Button
//
//  Created by Yoshikazu Tsuka on 2021/04/15.
//

import UIKit

class NextViewController: UIViewController {
    

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 5
        
        print(count)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func change(_ sender: Any) {
        
        label.text = "Twitterのロゴです。"
        label.font = .boldSystemFont(ofSize: 20)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
