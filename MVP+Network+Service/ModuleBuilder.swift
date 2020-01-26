//
//  ModuleBuilder.swift
//  MVP+Network+Service
//
//  Created by rau4o on 1/27/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

protocol AssemblyBuilderProtocol {
    static func createMainModule() -> UIViewController
    static func createDetailModule(comment: Comment?) -> UIViewController
}

class ModuleBuilder: AssemblyBuilderProtocol {
    static func createMainModule() -> UIViewController {
        let view = MainController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)
        view.presenter = presenter
        return view
    }
    
    static func createDetailModule(comment: Comment?) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService, comment: comment)
        view.detailPresenter = presenter
        return view
    }
}
