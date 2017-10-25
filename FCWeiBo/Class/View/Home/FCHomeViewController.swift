//
//  FCHomeViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

private var pageNum = 20
private var largernum = 0

class FCHomeViewController: FCBaseViewController {

    fileprivate lazy var homeArr = [FCHomeM]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHomeUI()
    
  }
        
}
//基类方法实现
extension FCHomeViewController{
//    适配iOS11 去掉头脚视图
    func setUpHomeUI() {
        tableview?.separatorStyle = .singleLine
        tableview?.sectionFooterHeight=1
        tableview?.sectionHeaderHeight=0
//        tableview.contentInset=UIEdgeInsetsMake(-5, 0, 0, 0)
    }
    
    override func loadData() {
        DispatchQueue.global().async {
            for i in 0..<pageNum {
                largernum+=1
                let m = FCHomeM()
                m.name="Home" + String(largernum)
                m.age=i
                isPull ? self.homeArr.append(m):self.homeArr.insert(m, at: 0)
                
            }
            DispatchQueue.main.async {
                isPull=false
                self.tableview?.reloadData()
                self.refresh?.endRefreshing()
            }
        }
        
    }
    
}

extension FCHomeViewController{
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeArr.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
        cell.textLabel?.text=homeArr[indexPath.row].name
        return cell
    }
    
}
