//
//  FCHomeViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class FCHomeViewController: FCBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

           setUpUI()
  }
    
}
//基类方法实现
extension FCHomeViewController{
//    适配iOS11 去掉头脚视图
    func setUpUI() {
        tableview.separatorStyle = .singleLine
        tableview.sectionFooterHeight=1
        tableview.sectionHeaderHeight=0
//        tableview.contentInset=UIEdgeInsetsMake(-5, 0, 0, 0)
    }
    override func loadNewData() {
        print("refresh------Home")
        refresh.endRefreshing()
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
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
        cell.textLabel?.text=String(indexPath.row)
        return cell
    }
    
    
}
