//
//  ViewController.swift
//  Swift6BasicApp1
//
//  Created by Yoshikazu Tsuka on 2021/04/16.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func tap(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        
        switch count {
        case 5:
            imageView.image = UIImage(named: "back2")
            break
        case 10:
            imageView.image = UIImage(named: "back3")
            break
        default:
            break
        }
    }
}

