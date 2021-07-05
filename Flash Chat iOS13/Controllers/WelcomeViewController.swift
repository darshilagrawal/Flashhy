//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Lottie

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=true
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=false
        super.viewWillDisappear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text=""
        animationView.play()
        animationView.loopMode = .loop
        
        
        var index = 0.0
        for letter in K.appName{
            Timer.scheduledTimer(withTimeInterval: index*0.1, repeats: false) { (Timer) in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
    }
}
