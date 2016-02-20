//
//  DetailViewController.swift
//  Saying
//
//  Created by 차정민 on 2016. 2. 4..
//  Copyright © 2016년 jeongmin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var englishSayingLabel: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("english_saying")!.description
            }
            if let label = self.englishSayingLabel {
                label.text = detail.valueForKey("korean_saying")!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        let nav = self.navigationController?.navigationBar
        nav?.barTintColor = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
        nav?.tintColor = UIColor(red: 250/255, green: 200/255, blue: 41/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}