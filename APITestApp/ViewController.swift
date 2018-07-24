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
            self.view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Pressed to get API Infos", for: UIControlState.normal)
            button.setTitleColor(UIColor.blue, for: UIControlState.normal)
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
            button.addTarget(self, action: #selector(requestCurrentTime), for: UIControlEvents.touchUpInside)
            return button
        }()
        
        self.responsedTextLabel = {
            let label: UILabel = UILabel()
            self.view.addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            label.topAnchor.constraint(equalTo: self.requestBtn.bottomAnchor, constant: 20).isActive = true
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            label.text = "API Info"
            return label
        }()
    }
    
    @IBAction func requestCurrentTime() {
        do {
        guard let url = URL(string: "http://swiftapi.rubypaper.co.kr:2029/practice/currentTime") else {fatalError()}
        let response = try String(contentsOf: url)
        
        self.responsedTextLabel.text = response
        self.responsedTextLabel.sizeToFit()
        } catch let e as Error {print(e.localizedDescription)}
    }
}

