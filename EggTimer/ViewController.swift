//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes : [String: Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        print(hardness)
        let cookTime: Int = eggTimes[hardness]!
        for i in stride(from: cookTime, to: 0, by: -1) {
            Thread.sleep(forTimeInterval: 1)
            print("Time left: \(i)")
            if (i == 1) {
                Thread.sleep(forTimeInterval: 1)
            }
        }
        
        print("Done!")
    }
    
}
