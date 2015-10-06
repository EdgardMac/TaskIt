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

    var taskArray: [TaskModel] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1 = TaskModel(task: "Study French", subTask: "Verbs", date: "01/14/2014")
        let task2 = TaskModel(task: "Eat Dinner", subTask: "Burgers", date: "01/14/2014")
        taskArray = [task1, task2, TaskModel(task: "Gym", subTask: "Leg Day", date: "01/14/2014")]
        
        self.tableView.reloadData()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showTaskDetail" {
        
            let detailVC :TaskDetailViewController = segue.destinationViewController as! TaskDetailViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow
            let thisTask = taskArray[indexPath!.row]
            detailVC.detailTaskModel = thisTask
        }
        
    }
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.taskArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let thisTask = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as! TaskCell

        
        cell.taskLabel.text = thisTask.task
        cell.descriptionLabel.text = thisTask.subTask
        cell.dateLabel.text = thisTask.date
        
        
        return cell
    }
    
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        print(indexPath.row)
        performSegueWithIdentifier("showTaskDetail", sender: self)
        
    }


}

