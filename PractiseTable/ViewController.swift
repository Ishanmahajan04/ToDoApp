//
//  ViewController.swift
//  PractiseTable
//
//  Created by Ishan Mahajan on 23/08/16.
//  Copyright © 2016 Ishan Mahajan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    var ary = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        ary = ["Calculator","Gif page","Upload","View","D.O.B"]
        identities = ["A","B","C","D","E"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel?.text = ary[indexPath.row] as String
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)

    self.navigationController?.pushViewController(viewController!, animated: true)
    }

}

