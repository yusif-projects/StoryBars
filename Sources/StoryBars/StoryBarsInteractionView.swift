//
//  StoryBarsInteractionView.swift
//
//
//  Created by Yusif Aliyev on 20.03.23.
//

import UIKit

public class StoryBarsInteractionView: UIView {
    
    /// Assign a `StoryBars` object to control it.
    public var storyBars: StoryBars!
    
    public override func draw(_ rect: CGRect) {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tap)
        
        let hold = UILongPressGestureRecognizer(target: self, action: #selector(handleHold))
        self.addGestureRecognizer(hold)
        
        super.draw(rect)
    }
    
    @objc private func handleTap(_ sender: UITapGestureRecognizer) {
        if let storyBars = storyBars {
            storyBars.handleTap(sender)
        } else {
            print("📊 StoryBarsInteractionView has no StoryBars object to control.")
        }
    }
    
    @objc private func handleHold(_ sender: UILongPressGestureRecognizer) {
        if let storyBars = storyBars {
            storyBars.handleHold(sender)
        } else {
            print("📊 StoryBarsInteractionView has no StoryBars object to control.")
        }
    }
    
}
