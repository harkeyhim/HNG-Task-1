//
//  TaskViewController.swift
//  HNG Task 1
//
//  Created by Yusuf Akeem on 07/09/2023.
//

import UIKit

class TaskViewController: UIViewController {
    var layout: TaskView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "HNG Task 1"
    }
    
    override func loadView() {
        super.loadView()
        layout = TaskView()
        view = layout
        setupUseLocationActions()
    }
}

extension TaskViewController {
    func setupUseLocationActions() {
        layout?.didTapWebPage = {
            let vc = CustomWebViewController()
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        }
    }
}
