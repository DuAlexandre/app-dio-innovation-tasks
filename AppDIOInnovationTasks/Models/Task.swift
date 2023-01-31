//
//  Task.swift
//  AppDIOInnovationTasks
//
//  Created by Eduardo Alexandre on 30/01/23.
//

import Foundation

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}
