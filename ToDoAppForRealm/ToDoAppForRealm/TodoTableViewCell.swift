//
//  TodoTableViewCell.swift
//  ToDoAppForRealm
//
//  Created by 陰山賢太 on 2018/10/08.
//  Copyright © 2018 Kageken. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(title: String?, date: Date?) {
        titleLabel.text = title ?? "nil"
        dateLabel.text = date?.toStringJP() ?? "nil"
    }
}
