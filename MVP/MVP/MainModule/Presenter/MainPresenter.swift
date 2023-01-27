//
//  MainPresenter.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import Foundation
import UIKit

protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting: String)
    func setColor(color: UIColor)
}

protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
    func changeColor()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
    
    func changeColor() {
        let color = person.color
        self.view.setColor(color: color)
    }
    
}
