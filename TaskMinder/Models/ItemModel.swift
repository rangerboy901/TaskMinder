//
//  ItemModel.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/25/22.
//

import Foundation

//immutable struct
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
        
        func updateCompletion() -> ItemModel {
            return ItemModel(id: id, title: title, isCompleted: !isCompleted)
        }
    }
}
