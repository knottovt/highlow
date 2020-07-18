//
//  ViewController.swift
//  highlow
//
//  Created by Visarut Tippun on 18/7/20.
//  Copyright © 2020 knottx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var totalLabel:UILabel!
    @IBOutlet weak var diceImageOne:UIImageView!
    @IBOutlet weak var diceImageTwo:UIImageView!
    @IBOutlet weak var diceImageThree:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset(UIButton())
    }

    func showResult(one:Int, two:Int, three:Int) {
        let total = one + two + three
        totalLabel.text = String(total)
        if total > 11 {
            titleLabel.text = "High!"
        }else if total < 11 {
            titleLabel.text = "Low!"
        }else{
            titleLabel.text = "GG!"
        }
        diceImageOne.image = UIImage(named: "dice-\(one)")
        diceImageTwo.image = UIImage(named: "dice-\(two)")
        diceImageThree.image = UIImage(named: "dice-\(three)")
    }
    
    @IBAction func letRoll(_ sender:UIButton) {
        let diceOne = Int.random(in: 1...6)
        let diceTwo = Int.random(in: 1...6)
        let diceThree = Int.random(in: 1...6)
        showResult(one: diceOne, two: diceTwo, three: diceThree)
    }

    @IBAction func reset(_ sender:UIButton) {
        showResult(one: 4, two: 4, three: 4)
        totalLabel.text = "Let's Roll"
        titleLabel.text = ""
    }
    
}

