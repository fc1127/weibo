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









