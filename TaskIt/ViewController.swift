//
//  ViewController.swift
//  TaskIt
//
//  Created by Edgard Maciel on 10/5/15.
//  Copyright © 2015 Edgard Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!

    var taskArray: [Dictionary<String,String>] = []
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1: Dictionary<String,String> = ["task":"Study french", "subtask":"verbs", "date":"05/10/2015"]
        let task2: Dictionary<String,String> = ["task":"Eat Dinner", "subtask":"Burgers","date":"09/10/2015"]
        let task3: Dictionary<String, String> = ["task":"Gym","subtask":"Leg Day","date":"09/10/2015"]
        
        taskArray = [task1, task2, task3]
        
        self.tableView.reloadData()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.taskArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let taskDict: Dictionary = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as! TaskCell

        
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        
        return cell
    }
    
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    


}

