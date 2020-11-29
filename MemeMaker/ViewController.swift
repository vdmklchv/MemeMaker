//
//  ViewController.swift
//  MemeMaker
//
//  Created by Vadim Colcev on 11/29/20.
//

import UIKit

class ViewController: UIViewController {
    
    let topChoices = [CaptionOption(emoji: "👀", caption: "You know what's cool?"), CaptionOption(emoji: "💥", caption: "You know what makes me mad?"), CaptionOption(emoji: "😻", caption: "You know what I love?")]
    let bottomChoices = [CaptionOption(emoji: "😺", caption: "Cats wearing hats"), CaptionOption(emoji: "🐶", caption: "Dogs carrying logs"), CaptionOption(emoji: "🙉", caption: "Monkeys being funky")]
    

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        chooseCaption(for: topChoices)
        chooseCaption(for: bottomChoices)
    }
    
    @IBAction func segmentedControlChanged(_ sender: Any) {
        chooseCaption(for: topChoices)
        chooseCaption(for: bottomChoices)
    }
    
    func chooseCaption(for selectedSegment: [CaptionOption]) {
        if selectedSegment == topChoices {
            topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        } else {
            bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
        }
    }
    
    

}

