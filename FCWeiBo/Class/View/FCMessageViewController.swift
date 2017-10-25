//
//  FCMessageViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

private var pageNum = 20
private var largernum = 0
private var messageCellId = "messageId"

class FCMessageViewController: FCBaseViewController {

    fileprivate lazy var homeArrs = [FCHomeM]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
extension FCMessageViewController {
    
    override func loadData() {
        DispatchQueue.global().async {
            for i in 0..<pageNum {
                largernum+=1
                let m = FCHomeM()
                m.name="Home" + String(largernum)
                m.age=i
                isPull ? self.homeArrs.append(m):self.homeArrs.insert(m, at: 0)
            }
            DispatchQueue.main.async {
                isPull=false
                self.tableview?.reloadData()
                self.refresh?.endRefreshing()
            }
        }
        
    }
    
}
extension FCMessageViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeArrs.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: messageCellId)
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: messageCellId)
        }
//        cell?.textLabel?.text=String(indexPath.row)
        cell?.textLabel?.text=homeArrs[indexPath.row].name
        return cell!
    }
    
    
}
