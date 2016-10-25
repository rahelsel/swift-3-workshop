//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Rachael A Helsel on 10/24/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UITableViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    @IBAction func closeButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion:nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        if let userText = textField.text{
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        
        dismiss(animated: true, completion: nil)
        
        return true
    
    }
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

   }
