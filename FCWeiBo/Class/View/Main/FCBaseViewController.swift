//
//  FCBaseViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class FCBaseViewController: UIViewController {

    
    var tableview : UITableView?
    var refresh : UIRefreshControl?

    override func viewDidLoad() {
        super.viewDidLoad()
            setupUI()
            loadData()
        
    }
    
    
}

extension FCBaseViewController{

   fileprivate func setupUI(){
//        调整视图
        automaticallyAdjustsScrollViewInsets=false
        tableview=UITableView(frame: view.bounds, style: .plain)
       
        tableview!.delegate=self
        tableview!.dataSource=self
//    tableview.contentInset=UIEdgeInsetsMake(navigationController?.navigationBar.bounds.height ?? 44, 0, tabBarController?.tabBar.bounds.height ?? 49, 0)
        view.addSubview(tableview!)
        
        //    刷新控件
        refresh=UIRefreshControl()
        refresh?.addTarget(self, action: #selector(loadData), for: .valueChanged)
        tableview?.addSubview(refresh!)
    }
       
}
extension FCBaseViewController:UITableViewDataSource,UITableViewDelegate{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
}
extension FCBaseViewController {
//    加载数据
    func loadData(){
    }
    
    
    
}









