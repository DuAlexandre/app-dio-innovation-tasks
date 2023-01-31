//
//  CategoryRepository.swift
//  AppDIOInnovationTasks
//
//  Created by Eduardo Alexandre on 31/01/23.
//

import Foundation
import UIKit

class CategoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.blue),
            Category(name: "To do", color: UIColor.yellow),
            Category(name: "Reminders", color: UIColor.red),
            Category(name: "Shop", color: UIColor.orange),
            Category(name: "Timer", color: UIColor.cyan),
        ]
        
        return categories
    }
}
