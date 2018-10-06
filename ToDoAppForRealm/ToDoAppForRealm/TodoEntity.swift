//
//  TodoEntity.swift
//  ToDoAppForRealm
//
//  Created by 陰山賢太 on 2018/10/06.
//  Copyright © 2018 Kageken. All rights reserved.
//

import Foundation
import RealmSwift

final class TodoEntity: Object {
    @objc dynamic var id: Int = -1
    @objc dynamic var title: String = ""
    @objc dynamic var date: Date = Date()
    @objc dynamic var memo: String = ""

    override static func primaryKey() -> String? {
        return "id"
    }
}
