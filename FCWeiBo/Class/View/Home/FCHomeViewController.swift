//
//  FCHomeViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

private var pageNum = 10

class FCHomeViewController: FCBaseViewController {

    fileprivate lazy var homeArr = [FCHomeM]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
  }

        
}
//基类方法实现
extension FCHomeViewController{
//    适配iOS11 去掉头脚视图
    func setUpUI() {
        tableview?.separatorStyle = .singleLine
        tableview?.sectionFooterHeight=1
        tableview?.sectionHeaderHeight=0
//        tableview.contentInset=UIEdgeInsetsMake(-5, 0, 0, 0)
    }
    
    override func loadData() {
        
        DispatchQueue.global().async {
            for i in 0..<pageNum {
                let m = FCHomeM()
                m.name="Home" + String(i)
                m.age=i
                self.homeArr.append(m)
            }
            DispatchQueue.main.async {
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
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
        cell.textLabel?.text=homeArr[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let secitons = tableView.numberOfSections-1
        print(secitons,indexPath.section)
//        print(row)
        if indexPath.section == secitons && row == tableView.numberOfRows(inSection: secitons)-1{
                loadData()
                print("最后一组 开始加载数据=====66666")
            
        }
    }
    
    
}
