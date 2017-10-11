//
//  ViewController.swift
//  RocketLauncher
//
//  Created by Sasha Voronoy on 11.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?
    @IBOutlet weak var launchModeView: UIView!
    @IBOutlet weak var cloudsImage: UIImageView!
    @IBOutlet weak var rocketWithStreamImage: UIImageView!
    @IBOutlet weak var launchModeLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "rocket_launch", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        player = try? AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
    }
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    @IBAction func launchButton(_ sender: Any) {
        launchModeView.isHidden = false
        player?.play()
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
