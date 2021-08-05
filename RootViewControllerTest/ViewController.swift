//
//  ViewController.swift
//  RootViewControllerTest
//
//  Created by paslang on 05/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemPink
        
        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Button", for: .normal)
        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 128).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }

    @objc func buttonAction(sender: UIButton!){
        let viewCOntroller = UINavigationController(rootViewController: DetailViewController())
        viewCOntroller.modalPresentationStyle = .fullScreen
        present(viewCOntroller, animated: true, completion: nil)
    }
}

