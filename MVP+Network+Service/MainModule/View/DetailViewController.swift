//
//  DetailViewController.swift
//  MVP+Network+Service
//
//  Created by rau4o on 1/27/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .white
        label.numberOfLines = 10
        return label
    }()
    
    var detailPresenter: DetailViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        detailPresenter.setComment()
    }
    
    func configureUI() {
        view.addSubview(nameLabel)
        nameLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 50, paddingLeft: 10, paddingRight: 10, height: 400)
    }
}

extension DetailViewController: DetailViewProtocol {
    func setComment(comment: Comment?) {
        nameLabel.text = comment?.body
    }
}
