//
//  ViewController.swift
//  BasicAnimationsPT
//
//  Created by morse on 6/10/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rotateButton = UIButton(type: .system)
        rotateButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rotateButton)
        rotateButton.setTitle("Rotate", for: .normal)

        let keyButton = UIButton(type: .system)
        keyButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(keyButton)
        keyButton.setTitle("Key", for: .normal)
        
        let springButton = UIButton(type: .system)
        springButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(springButton)
        springButton.setTitle("Spring", for: .normal)
        
        let squashButton = UIButton(type: .system)
        squashButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(squashButton)
        squashButton.setTitle("Squash", for: .normal)
        
        let anticButton = UIButton(type: .system)
        anticButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(anticButton)
        anticButton.setTitle("Antic", for: .normal)
//        let rotateButtonLeadingConstraint = NSLayoutConstraint(item: rotateButton, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 20)
//        let rotateButtonBottomContraint = NSLayoutConstraint(item: rotateButton, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 20)
//        NSLayoutConstraint.activate([rotateButtonLeadingConstraint, rotateButtonBottomContraint])
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(rotateButton)
        stackView.addArrangedSubview(keyButton)
        stackView.addArrangedSubview(springButton)
        stackView.addArrangedSubview(squashButton)
        stackView.addArrangedSubview(anticButton)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            ])
    }


}

