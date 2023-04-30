//
//  HomeViewController.swift
//  Checklist
//
//  Created by Berrak Taşkınsu on 2.04.2023.
//

import UIKit

final class HomeViewController: BaseViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Home"
        createButton()
        
    }
    
    private func createButton() {
        
        let button = UIButton(type: .custom)
        button.setTitle("NEXT", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .blue
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(didTapNextButton(_:)), for: .touchUpInside)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 48),
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -48)
        ])
        
    }
    
    @objc
    private func didTapNextButton(_ sender: UIButton) {
        
        let testViewController = TestViewController()
        navigationController?.pushViewController(testViewController, animated: true)
    }

}
