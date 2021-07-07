//
//  InfoViewController.swift
//  SideMenu
//
//  Created by alaattinbulut on 25.04.2021.
//

import UIKit

class InfoViewController: UIViewController {

    weak var delegate: MenuButtonProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About This App"
        view.backgroundColor = .systemGreen
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(didTapMenuButton))

    }
    
    @objc func didTapMenuButton() {
        delegate?.didTapMenuButton()
    }
}
