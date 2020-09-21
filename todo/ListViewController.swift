//
//  ViewController.swift
//  todo
//
//  Created by Swamita on 15/08/20.
//  Copyright © 2020 Swamita Gupta. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Bread", "Build App"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }


}

