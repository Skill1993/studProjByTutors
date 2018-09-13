//
//  ViewController.swift
//  Boners
//
//  Created by Никита Журавлев on 22.07.2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImgView: UIImageView!
    @IBOutlet weak var rightImgView: UIImageView!
    
    func rolldice(){
        let numberOne = arc4random_uniform(6)+1
        let numberTwo = arc4random_uniform(6)+1
        label.text = "The sum is: \(numberOne + numberTwo)"
        leftImgView.image = UIImage(named: "Dice\(numberOne)")
        rightImgView.image = UIImage(named: "Dice\(numberTwo)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rolldice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollACTION(_ sender: UIButton) {
        rolldice()
    }

}

