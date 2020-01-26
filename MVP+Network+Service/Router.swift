//
//  Router.swift
//  MVP+Network+Service
//
//  Created by rau4o on 1/27/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}

protocol RouterProtocol {
    func initialViewController()
    func showDetail(comment: Comment?)
    func popToRoot()
}

//class Router: 
