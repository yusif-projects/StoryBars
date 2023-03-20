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
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var storyBars: StoryBars!
    @IBOutlet weak var storyBarsInteractionView: StoryBarsInteractionView!
    
    private let photos: [UIImage] = [UIImage(named: "photo-1")!,
                                     UIImage(named: "photo-2")!,
                                     UIImage(named: "photo-3")!,
                                     UIImage(named: "photo-4")!,
                                     UIImage(named: "photo-5")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        imageView.image = photos[storyBars.currentStoryIndex]
        
        storyBars.numberOfStories = photos.count
        
        storyBarsInteractionView.storyBars = storyBars
        
        storyBars.storyEndAction = { [weak self] newStoryIndex in
            if let strongSelf = self {
                strongSelf.imageView.image = strongSelf.photos[newStoryIndex]
            }
        }
        
        storyBars.doneAction = { [weak self] in
            if let strongSelf = self {
                strongSelf.showAlert()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        storyBars.start()
    }
    
    private func showAlert() {
        let alertController = UIAlertController(title: "Done!", message: "All the stories are viewed.", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Restart", style: .default) { [weak self] _ in
            if let strongSelf = self {
                strongSelf.storyBars.reset()
            }
        }
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

}
