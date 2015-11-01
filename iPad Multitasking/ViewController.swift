//
//  ViewController.swift
//  iPad Multitasking
//
//  Created by Davis Allie on 1/11/2015.
//  Copyright © 2015 tutsplus. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var viewWidth: UILabel!
    @IBOutlet weak var sizeClass: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as!
        AVPlayerViewController
        let url = NSBundle.mainBundle().URLForResource("Video", withExtension: "mp4")!
        destination.player = AVPlayer(URL: url)
        destination.player?.play()
    }
}

