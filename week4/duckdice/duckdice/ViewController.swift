//
//  ViewController.swift
//  duckdice
//
//  Created by Apple on 2022/3/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ramdom(diceImageView1)
        ramdom(diceImageView2)
        ramdom(diceImageView3)
        ramdom(diceImageView4)
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        ramdom(diceImageView1)
        ramdom(diceImageView2)
        ramdom(diceImageView3)
        ramdom(diceImageView4)
    }
    func ramdom(_ image: UIImageView){
        let randomInt = Int.random(in: 0..<6)
        if(randomInt == 0){
            image.image = UIImage(named: "DiceOne")
        }
        if(randomInt == 1){
            image.image = UIImage(named: "DiceTwo")
        }
        if(randomInt == 2){
            image.image = UIImage(named: "DiceThree")
        }
        if(randomInt == 3){
            image.image = UIImage(named: "DiceFour")
        }
        if(randomInt == 4){
            image.image = UIImage(named: "DiceFive")
        }
        if(randomInt == 5){
            image.image = UIImage(named: "DiceSix")
        }
    }

}
