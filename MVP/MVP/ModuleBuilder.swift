//
//  ModuleBuilder.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import UIKit

// Команда может называть этот файл Assembly или Builder

protocol Builder {
    static func buildModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static  func buildModule() -> UIViewController  {
        let model = Person(firstName: "Kirill", lastName: "Maksimov", color: UIColor.purple)
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
