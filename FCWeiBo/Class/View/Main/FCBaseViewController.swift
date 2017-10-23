//
//  FCBaseViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class FCBaseViewController: UIViewController {

    
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("fsafsafaf")
        print("fsafsafaf")
        print("fsafsafaf")
            setupUI()
    
    }
    
}

extension FCBaseViewController{

    func setupUI(){
//        调整视图
        tableview = UITableView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), style: UITableViewStyle.init(rawValue: 0)!)
        automaticallyAdjustsScrollViewInsets=false
  tableview.contentInset=UIEdgeInsetsMake(navigationController?.navigationBar.bounds.height ?? 64, 0, tabBarController?.tabBar.bounds.height ?? 49, 0)
        tableview.backgroundColor=UIColor.red
        tableview.delegate=self
        tableview.dataSource=self
        view.addSubview(tableview)
    }
}
extension FCBaseViewController:UITableViewDataSource,UITableViewDelegate{

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
        cell.textLabel?.text=String(indexPath.row)
        return cell
        
    }
    
}









