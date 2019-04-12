//
//  AddViewController.swift
//  WordList
//
//  Created by 山谷美咲生 on 2019/04/12.
//  Copyright © 2019 山谷美咲生. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var englishTextField: UITextField!
    @IBOutlet var japaneseTextFiled: UITextField!
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveDate = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveDate.array(forKey: "WORD") != nil {
            wordArray = saveDate.array(forKey: "WORD")as! [Dictionary<String, String>]
            }
        }

        // Do any additional setup after loading the view.
    
    @IBAction func saveWord() {
        let wordDictionary = ["english": englishTextField.text!, "japanese": japaneseTextFiled.text!]
        
        wordArray.append(wordDictionary)
        saveDate.set(wordArray, forKey: "WORD")//ここで保存してる
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "単語の登録が完了しました",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        self.present(alert,animated: true, completion: nil)
        englishTextField.text = ""
        japaneseTextFiled.text = ""
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
