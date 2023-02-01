//
//  TasksTableViewController.swift
//  AppDIOInnovationTasks
//
//  Created by Eduardo Alexandre on 30/01/23.
//

import UIKit

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
    
    private var tasks: [Task] = []

    // Carrega a página inicial
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Carrega quando retornamos para tela inicial
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tasks = TaskRepository.instance.getTasks()
        self.tableView.reloadData()
    }

    // Indica o número de linhas que terá o projeto
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // metodo carrega uma celula por linha e seta seus dados
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
