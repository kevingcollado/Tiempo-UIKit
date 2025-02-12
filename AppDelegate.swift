//
//  AppDelegate.swift
//  Tiempo-UIKit
//
//  Created by Kevin Collado on 04/12/24.
//

import UIKit
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //Key GooglePlaces
        GMSPlacesClient.provideAPIKey("AIzaSyAmtz5WIJNYD6PYictdy0KLGVoYVlJbGRE")
        
        //Se crea una instancia de UIWindow, que ocupe toda la pantalla del dispositivo, se instancía MainViewController() y se pasa como controlador inicial de vista, se vuelve llave y visible, se pasa la instancia a window.
        let window = UIWindow(frame: UIScreen.main.bounds)
        //Navigator Controller
        let navigationController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

}

