//
//  ViewController.swift
//  homework 3
//
//  Created by Ilya Pogozhev on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var circle1: UIImageView!
    @IBOutlet weak var circle2: UIImageView!
    @IBOutlet weak var circle3: UIImageView!
    @IBOutlet weak var circle4: UIImageView!
    
    let correctPin = [2, 9, 0, 1]
    var userPinCode = [Int]()

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        if let button = sender as? UIButton {
            let tag = button.tag
            userPinCode.append(tag)
        }
        for i in 0...userPinCode.count {
            let circles = [circle1, circle2, circle3, circle4]
            if i == userPinCode.count - 1 {
                circles[i]?.image = UIImage(systemName: "circle.fill")
            }
        }
        if userPinCode.count == correctPin.count {
            if userPinCode == correctPin {
                let alertWelcome = UIAlertController(title: "FocusBank", message: "Добро пожаловать!", preferredStyle: .alert)
                alertWelcome.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default))
                self.present(alertWelcome, animated: true, completion: nil)
                userPinCode.removeAll()
                
            } else {
                let alertError = UIAlertController(title: "FocusBank", message: "Вы ввели неверный пин-код!", preferredStyle: .alert)
                alertError.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default))
                self.present(alertError, animated: true, completion: nil)
                userPinCode.removeAll()
            }
        }
//        switch circles {
//        case 1:
//            circles[0].image = UIImage(systemName: "cirrcle.fill")
//        }
    }
}

