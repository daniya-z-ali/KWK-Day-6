//
//  ViewController.swift
//  Emoji Flag Project
//
//  Created by Daniya Z Ali on 8/12/19.
//  Copyright © 2019 Daniya Z Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🇨🇿": "Czech Republic", "🇦🇹": "Austria", "🇦🇷": "Argentina", "🇩🇪": "Germany", "🇳🇱" : "The Netherlands", "🇭🇺": "Hungary", "🇭🇷": "Croatia", "🇮🇹": "Italy", "🇹🇿": "Tanzania", "🇲🇦": "Morocco", "🇯🇵": "Japan", "🇸🇪": "Sweden", "🇧🇪": "Belgium", "🇹🇭": "Thailand", "🇫🇷": "France", "🇬🇧": "United Kingdom", "🇬🇷": "Greece", "🇿🇦": "South Africa", "🇰🇭": "Cambodia", "🏴󠁧󠁢󠁳󠁣󠁴󠁿": "Scotland", "🇹🇷": "Turkey"]
    let customMessages = ["Czech Republic": [" ], "Austria": [], "Argentina": [], ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton){
        if let selectedEmotion = sender.titleLabel?.text {
            let titleText = selectedEmotion
            let messageText = emojis[selectedEmotion]!
            let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    }
}
