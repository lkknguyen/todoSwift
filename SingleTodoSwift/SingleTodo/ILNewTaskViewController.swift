//
//  ILNewTaskViewController.swift
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 Icalia Labs. All rights reserved.
//

import UIKit

class ILNewTaskViewController: UIViewController {

    @IBOutlet var taskDescriptionTextField : UITextField
    var todoVC: ILTodoTableViewController = ILTodoTableViewController()

    @IBAction func addTaskButtonPressed(sender : AnyObject) {
        var task: ILTask = ILTask(description: self.taskDescriptionTextField.text)

        self.todoVC.addTask(task)
        
        self.navigationController.popViewControllerAnimated(true)
    }

}
