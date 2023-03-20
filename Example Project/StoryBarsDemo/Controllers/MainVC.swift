//
//  MainVC.swift
//  StoryBarsDemo
//
//  Created by Yusif Aliyev on 20.03.23.
//

import UIKit
import StoryBars

class MainVC: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { return .portrait }
    
    @IBOutlet weak var storyBars: StoryBars!
    @IBOutlet weak var storyBarsInteractionView: StoryBarsInteractionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        storyBarsInteractionView.storyBars = storyBars
        
        storyBars.storyEndAction = { newStoryIndex in
            // Handler
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        storyBars.start()
    }

}
