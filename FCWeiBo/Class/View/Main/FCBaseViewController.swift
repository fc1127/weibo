//
//  FCBaseViewController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

//上拉刷新
var isPull = false


class FCBaseViewController: UIViewController {

//    添加可选表格
    var tableview : UITableView?
//    刷新控件
    var refresh : UIRefreshControl?
//    是否是访客视图
    var isVisitor = false
//    访客视图的信息字典
    var visitorInfo : [String:String]?

    override func viewDidLoad() {
        super.viewDidLoad()
//        基类加载数据
            loadData()
//    判断是否是访客视图
        isVisitor ? VisitorView() : setupUI()
    }
}

extension FCBaseViewController{
    
    fileprivate func VisitorView(){
        let visitorV = FCVisitView(frame: self.view.bounds)
        view.insertSubview(visitorV, belowSubview: (navigationController?.navigationBar)!)
        visitorV.visitorInfo=visitorInfo
        view.addSubview(visitorV)
    }

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
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let row = indexPath.row+1
        let sections = tableView.numberOfSections-1
        if sections == indexPath.section && row == tableView.numberOfRows(inSection: sections){
            isPull=true
            loadData()
        }
        
    }
    
}
extension FCBaseViewController {
//    加载数据
    func loadData(){
        self.refresh?.endRefreshing()
    }
    
}





