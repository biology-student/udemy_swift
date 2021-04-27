//
//  CheckPermission.swift
//  Swift6Camera
//
//  Created by Yoshikazu Tsuka on 2021/04/21.
//

import Foundation
import Photos


class CheckPermission{
    
    // ユーザーに許可を出す
    func checkCamera(){
        
        PHPhotoLibrary.requestAuthorization { (status) in
            
            switch(status){
                
            case .authorized:
                print("authorized")
                
            case .notDetermined:
                print("notDetermined")
                
            case .restricted:
                print("restricted")
                
            case .denied:
                print("denied")
                
            case .limited:
                print("limited")
                
            @unknown default:
                break
            }
        }
    }
}
