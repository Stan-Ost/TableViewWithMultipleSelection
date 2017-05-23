//
//  ViewModel.swift
//  TableViewWithMultipleSelection
//
//  Created by Stanislav Ostrovskiy on 5/22/17.
//  Copyright © 2017 Stanislav Ostrovskiy. All rights reserved.
//

let dataArray = [Model(title: "Swift"), Model(title: "Objective C"), Model(title: "Java"), Model(title: "Kotlin"), Model(title: "Java Script"), Model(title: "Python"), Model(title: "Ruby"), Model(title: "PHP"), Model(title: "Perl"), Model(title: "C#"), Model(title: "C++"), Model(title: "Perl"), Model(title: "Visual Basic")]

class ViewModelItem {
    private var item: Model
    
    var isSelected = false
    
    var title: String {
        return item.title
    }
    
    init(item: Model) {
        self.item = item
    }
}

class ViewModel {
    var items = [ViewModelItem]()
    
    var selectedItems: [ViewModelItem] {
        return items.filter { return $0.isSelected }
    }
    
    init() {
        items = dataArray.map { ViewModelItem(item: $0) }
    }
}
