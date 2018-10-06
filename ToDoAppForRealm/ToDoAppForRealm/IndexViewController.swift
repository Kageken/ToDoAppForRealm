//
//  IndexViewController.swift
//  ToDoAppForRealm
//
//  Created by 陰山賢太 on 2018/10/06.
//  Copyright © 2018 Kageken. All rights reserved.
//

import UIKit
import RealmSwift

class IndexViewController: UIViewController {

    @IBOutlet weak var todoTableView: UITableView!

    var todos: Results<TodoEntity>!

    deinit {
        print("\(self) was deinited")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }

    func setup(){
        todoTableView.delegate = self
        todoTableView.dataSource = self
    }

    @IBAction func toCreateView(_ sender: Any){
        let createVC = self.storyboard?.instantiateViewController(withIdentifier: "create&edit") as! EditViewController
    }

}
