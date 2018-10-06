//
//  DateExtension.swift
//  ToDoAppForRealm
//
//  Created by 陰山賢太 on 2018/10/06.
//  Copyright © 2018 Kageken. All rights reserved.
//

import Foundation

extension Date {

    func toStringJP() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "ydMMM", options: 0, locale: Locale(identifier: "ja_JP"))
        return formatter.string(from: self)
    }
}
