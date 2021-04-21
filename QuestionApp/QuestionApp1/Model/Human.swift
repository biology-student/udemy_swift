//
//  Human.swift
//  QuestionApp1
//
//  Created by Yoshikazu Tsuka on 2021/04/19.
//

import Foundation


class Human: Animal {
    
    override func breath() {
        super.breath()
        
        profile()
    }
    
    
    func profile(){
        
        print("私はボブです")
    }
}
