//
//  DetailViewController.swift
//  ToDoAppForRealm
//
//  Created by 陰山賢太 on 2018/10/06.
//  Copyright © 2018 Kageken. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var memoTextView: UITextView!

    var todo: TodoEntity? = nil

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

    func setup() {
        navigationItem.title = "詳細"
        navigationController?.delegate = self
        updateUI()
    }

    @IBAction func editAction(_ sender: Any) {
        let updateVC = storyboard?.instantiateViewController(withIdentifier: "Create&Edit") as! EditViewController
        updateVC.style = .update
        updateVC.todo = todo
        present(updateVC, animated: true, completion: nil)
    }

    @IBAction func deleteAction(_ sender: Any) {
        TodoModel.delete(id: (todo?.id)!, completion: { _ in
            print("delete was tapped")
            let indexVC = self.navigationController?.viewControllers[0] as! IndexViewController
            indexVC.updateUI()
        })
        navigationController?.popViewController(animated: true)
    }

    func updateUI() {
        titleLabel.text = todo?.title ?? "nil"
        dateLabel.text = todo?.date.toStringJP() ?? "nil"
        memoTextView.text = todo?.memo ?? "nil"
        navigationController?.isToolbarHidden = false
    }
}

extension DetailViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        guard let indexVC = viewController as? IndexViewController else { return }
        indexVC.updateUI()
    }
}
