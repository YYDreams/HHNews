//
//  SceneDelegate.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    @available(iOS 13.0, *)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let _ = (scene as? UIWindowScene) else { return }
        
              if let windowScene = scene as? UIWindowScene {

                  let window = UIWindow(windowScene: windowScene)
                  window.rootViewController = BaseTabBarViewController()
                  self.window = window
                  window.makeKeyAndVisible()
              }
    }
}

