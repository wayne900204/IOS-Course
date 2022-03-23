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
    
    let diceArray = [
        UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ramdom(diceImageView1)
        ramdom(diceImageView2)
        ramdom(diceImageView3)
        ramdom(diceImageView4)
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        ramdom(diceImageView1)
        ramdom(diceImageView2)
        ramdom(diceImageView3)
        ramdom(diceImageView4)
    }
    
    @IBAction func exchangButtonPressed(_ sender: Any) {
        exchange()
    }
    
    @IBAction func sortButtonPressed(_ sender: Any) {
        sorttt()
    }
    
    // 隨機產生 random 數字，並設定 image
    func ramdom(_ image: UIImageView){
        let randomInt = Int.random(in: 0..<6)
        image.image = diceArray[randomInt]
    }
    
    // 交換 Image1 和 Image2
    func exchange(){
        let temp = diceImageView1.image
        diceImageView1.image = diceImageView2.image
        diceImageView2.image = temp
    }
    
    // 開始排序 image
    func sorttt(){
        var tempArray = [getImageIndex(image: diceImageView1.image),getImageIndex(image: diceImageView2.image),getImageIndex(image: diceImageView3.image),getImageIndex(image: diceImageView4.image)]
        tempArray.sort()

        diceImageView1.image = diceArray[tempArray[0]]
        diceImageView2.image = diceArray[tempArray[1]]
        diceImageView3.image = diceArray[tempArray[2]]
        diceImageView4.image = diceArray[tempArray[3]]
    }
    
    // 取得 image 在陣列裡面的 index
    func getImageIndex(image: UIImage?) -> Int{
        if(image == UIImage(named: "DiceOne")){
            return 0;
        }
        if(image ==  UIImage(named: "DiceTwo")){
            return 1;
        }
        if(image ==  UIImage(named: "DiceThree")){
            return 2;
        }
        if(image ==  UIImage(named: "DiceFour")){
            return 3;
        }
        if(image ==  UIImage(named: "DiceFive")){
            return 4;
        }
        else{
            return 5;
        }
    }
}
