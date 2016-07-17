//
//  ViewController.swift
//  tableViewPractice
//
//  Created by jumpei on 2016/07/17.
//  Copyright © 2016年 jumpei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let itemes = ["Sleepy", "Sneezy", "Bashful", "Happy",
                  "Doc", "Grumpy", "Dopey", "Thorin", "Dorin", "Nori", "Ori",
                  "Balin", "Dwalin", "Fili", "Kili",
                  "Oin", "Gloin", "Bifur", "Bofur", "Bombur"
    ]
    
    @IBOutlet weak var simpleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 何行？
    func tableView(tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return itemes.count
    }
    
    // cellは何表示？
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = UITableViewCell(style: UITableViewCellStyle.Subtitle,reuseIdentifier: "cell")
        cell.textLabel?.text = itemes[indexPath.row]
        return cell
    }
}

