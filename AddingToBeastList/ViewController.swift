//
//  ViewController.swift
//  AddingToBeastList
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var tableVies: UITableView!
    
    var listOfTasks: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVies.dataSource = self
        // Do any additional setup after loading the view.
    }


    @IBAction func BeastButtonPressed(_ sender: UIButton) {
        listOfTasks.append(taskTextField.text!)
        tableVies.reloadData()
        taskTextField.text = ""
    }
}

extension ViewController : UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfTasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = listOfTasks[indexPath.row]
        return cell
    }
}

