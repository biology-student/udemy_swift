//
//  ViewController.swift
//  Swift5Bokete
//
//  Created by Yoshikazu Tsuka on 2021/04/27.
//

import UIKit
import Alamofire
import SwiftyJSON
import SDWebImage
import Photos

class ViewController: UIViewController {
    
    
    @IBOutlet weak var odaiImageView: UIImageView!
    @IBOutlet weak var commentTextView: UITextView!
    @IBOutlet weak var searchTextField: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTextView.layer.cornerRadius = 20.0
        
        PHPhotoLibrary.requestAuthorization { (status) in
            
            switch(status){
            case .authorized: break
            case .denied: break
            case .notDetermined: break
            case .restricted: break
            }
            
        }
        
        // Do any additional setup after loading the view.
    }

    
    // 検索キーワードの値を元に画像を引っ張ってくる
    // pixabay.com
    

}

