//
//  ListTableViewController.swift
//  WordList
//
//  Created by 山谷美咲生 on 2019/04/12.
//  Copyright © 2019 山谷美咲生. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var wordArray: [Dictionary<String,String>] = []
    
    let saveDate = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"ListTableViewCell",bundle: nil),
                           forCellReuseIdentifier:"cell")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveDate.array(forKey: "WORD") != nil {
            wordArray = saveDate.array(forKey:"WORD") as! [Dictionary<String, String>]//保存した単語を呼び出しているところ
        }
        tableView.reloadData()
        }
    
//    func observe<Value>(_ keyPath: KeyPath<ListTableViewController, Value>, options: NSKeyValueObservingOptions = [], changeHandler: @escaping (ListTableViewController, NSKeyValueObservedChange<Value>) -> Void) -> NSKeyValueObservation {
//
//    }
    
    //セクション数を指定します。
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //セルの個数を表示します。
    override func tableView(_ tableaview: UITableView, numberOfRowsInSection section:
        Int) -> Int {
        return wordArray.count
    }
    
    //セルの中身の表示の設定の仕方を設定します
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
            as! ListTableViewCell
            
            let nowIndexPachDictionary = wordArray[indexPath.row]
            
            cell.englishLabel.text = nowIndexPachDictionary["english"]
            cell.japaneseLabel.text = nowIndexPachDictionary["japanese"]
            
            return cell
        
    }
    
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

