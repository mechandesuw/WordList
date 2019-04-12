//
//  ViewController.swift
//  WordList
//
//  Created by 山谷美咲生 on 2019/04/12.
//  Copyright © 2019 山谷美咲生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func back(segue: UIStoryboardSegue) {    //Finishまで行った時にスタート画面までもどるためのメソッド
    
    }
    
    @IBAction func startButtonTapped() {
        let saveDate = UserDefaults.standard
        
        if let wordArray = saveDate.array(forKey:"WORD") {
            if wordArray.count > 0 {
                self.performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }
        
        let alert: UIAlertController = UIAlertController(
            title: "単語",
            message: "まずは「単語一覧」をタップして単語登録してください。",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style:  .default,
            handler: nil
        ))
        
        self.present(alert,animated: true,completion: nil)

    }

    }
