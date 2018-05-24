//
//  ViewController.swift
//  SiriKitSample
//
//  Created by Ken Phanith on 2018/05/24.
//  Copyright © 2018 Quad. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {}


// MARK: - LIFECYCLE
extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 21))
        label.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        label.text = "SiriKit Sample Project"
        self.view.addSubview(label)
        
        
        // request for Siri Authorization
        INPreferences.requestSiriAuthorization { (status) in
            
        }
        
        INVocabulary.shared().setVocabularyStrings(["Open", "SiriKit", "Sample"], of: .workoutActivityName)
    }
    
}
