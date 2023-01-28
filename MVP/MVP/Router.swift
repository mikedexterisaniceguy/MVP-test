//
//  Router.swift
//  MVP
//
//  Created by 123 on 28.01.23.
//

import UIKit

protocol RouterMainProtocol {
    var navigationViewController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}

protocol RouterProtocol: RouterMainProtocol {
    func initialViewController()
    func showDetail(comment: Comment?)
    func popToRoot()
}

class Router: RouterProtocol {
    
    var navigationViewController: UINavigationController?
    var assemblyBuilder: AssemblyBuilderProtocol?
    
    init(navigationViewController: UINavigationController?, assemblyBuilder: AssemblyBuilderProtocol?) {
        self.navigationViewController = navigationViewController
        self.assemblyBuilder = assemblyBuilder
    }
    
    func initialViewController() {
        if let navigationViewController = navigationViewController {
            guard let mainViewController = assemblyBuilder?.createMainModule(router: self) else { return }
            navigationViewController.viewControllers = [mainViewController]
        }
    }
    
    func showDetail(comment: Comment?) {
        if let navigationViewController = navigationViewController {
            guard let detailViewController = assemblyBuilder?.createDetailModule(comment: comment, router: self) else { return }
            navigationViewController.pushViewController(detailViewController, animated: true)
        }
    }
    
    func popToRoot() {
        if let navigationViewController = navigationViewController {
            navigationViewController.popToRootViewController(animated: true)
        }
    }
}
