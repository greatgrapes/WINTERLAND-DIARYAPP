//
//  ViewController.swift
//  WINTERLAND
//
//  Created by 박진성 on 2023/02/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    @IBOutlet weak var firstView: UIView!
    
    var menuOut = false
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureUI()
    }

    func configureUI() {
        firstView.backgroundColor = UIColor(patternImage: UIImage(named: "Kraft-Pattern-Featured-Image-12.png")!)
        
        title = "WINTERLAND"
    }
    @IBAction func menuTapped(_ sender: UIBarButtonItem) {
        
        if menuOut == false {
            leading.constant = 100
            trailing.constant = -100
            menuOut = true
        } else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
    }
    
}

