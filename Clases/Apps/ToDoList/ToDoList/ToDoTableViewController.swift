//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Usuario invitado on 15/10/18.
//  Copyright © 2018 kubos777. All rights reserved.
//
import UIKit
import Foundation

class ToDoTableViewController: UITableViewController {
    var todos = [ToDo]()
    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
            tableView.dequeueReusableCell(withIdentifier:
                "ToDoCellIdentifier") else {
                    fatalError("No se puede desencolar el elemento")
        }
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        return cell
    }
}
