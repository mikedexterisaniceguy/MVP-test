//
//  SceneDelegate.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let navVC = UINavigationController()
        let assembly = AssemblyModuleBuilder()
        let router = Router(navigationViewController: navVC, assemblyBuilder: assembly)
        router.initialViewController()
        window.rootViewController = navVC
        window.makeKeyAndVisible()
        self.window = window
    }

  


}

