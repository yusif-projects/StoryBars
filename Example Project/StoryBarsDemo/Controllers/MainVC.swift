//
//  MainVC.swift
//  StoryBarsDemo
//
//  Created by Yusif Aliyev on 20.03.23.
//

import UIKit
import StoryBars

class MainVC: UIViewController {
    
    @IBOutlet weak var storyBars: StoryBars!
    @IBOutlet weak var storyBarsInteractionView: StoryBarsInteractionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyBarsInteractionView.storyBars = storyBars
        
        storyBars.storyItems = [5, 6]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        storyBars.start()
    }

}
