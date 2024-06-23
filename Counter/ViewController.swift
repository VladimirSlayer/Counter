//
//  ViewController.swift
//  Counter
//
//  Created by Владимир on 23.06.2024.
//

import UIKit

class ViewController: UIViewController {

    var count: Int = 0
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика: " + String(count)
        // Do any additional setup after loading the view.
    }
    @IBAction func increaseCounter(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: " + String(count)
    }
    

    
}

