//
//  ViewController.swift
//  APITestApp
//
//  Created by 고상범 on 2018. 7. 24..
//  Copyright © 2018년 고상범. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var requestBtn: UIButton!
    @IBOutlet var responsedTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UISetUp()
    }

    func UISetUp() {
        self.requestBtn = {
            let button: UIButton = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(button)
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
            return button
        }()
        self.responsedTextLabel = {
            let label: UILabel = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(label)
            label.topAnchor.constraint(equalTo: self.requestBtn.bottomAnchor, constant: 20).isActive = true
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            return label
        }()
    }
    
    @IBAction func requestCurrentTime() {
        
        
    }
}

