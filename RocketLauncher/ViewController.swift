//
//  ViewController.swift
//  RocketLauncher
//
//  Created by Sasha Voronoy on 11.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var launchModeView: UIView!
    @IBOutlet weak var cloudsImage: UIImageView!
    @IBOutlet weak var rocketWithStreamImage: UIImageView!
    @IBOutlet weak var launchModeLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func launchButton(_ sender: Any) {
        launchModeView.isHidden = false
        UIView.animate(withDuration: 3.0, animations: {
            var  rocketFrame = self.rocketWithStreamImage.frame
            rocketFrame.origin.y = 70
            self.rocketWithStreamImage.frame = rocketFrame
            
        })
        { _ in
            self.launchModeLabel.isHidden = false
            self.onLabel.isHidden = false
        }
        
    }
    

}

