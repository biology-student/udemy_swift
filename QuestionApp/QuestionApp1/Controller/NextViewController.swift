//
//  NextViewController.swift
//  QuestionApp1
//
//  Created by Yoshikazu Tsuka on 2021/04/19.
//

import UIKit


protocol NowScoreDelegate {
    
    func nowScore(score:Int)
}

class NextViewController: UIViewController {

    
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    
    var delegate:NowScoreDelegate?
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    var beforeCount = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil {
            
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
    }
    
    
    @IBAction func bask(_ sender: Any) {
        
        // もし最高得点であれば入れ替え
        if beforeCount < correctedCount {
            
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            delegate?.nowScore(score: correctedCount)
            
        } else if beforeCount > correctedCount {
            
            // そうでない場合は、入れ替えない
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
            
        }
        
        
        
        dismiss(animated: true, completion: nil)
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
