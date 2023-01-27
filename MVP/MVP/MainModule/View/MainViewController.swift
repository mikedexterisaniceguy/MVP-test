//
//  ViewController.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTappedButton(_ sender: Any) {
        self.presenter.showGreeting()
        self.presenter.changeColor()
    }
}

extension MainViewController: MainViewProtocol {
    func setColor(color: UIColor) {
        self.colorView.backgroundColor = color
    }
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
 
}

