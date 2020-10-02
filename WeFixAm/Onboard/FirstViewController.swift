//
//  FirstViewController.swift
//  WeFixAm
//
//  Created by MacMini on 30/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController{
    
    var imageView: UIImageView = {
           let imageView = UIImageView(frame: .zero)
           imageView.image = UIImage(named: "wefix_home")
           imageView.contentMode = .scaleToFill
           imageView.translatesAutoresizingMaskIntoConstraints = false
           return imageView
       }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.insertSubview(imageView, at: 0)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
       
    }
    
    @IBAction func openNew(){
            let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
             let mainVc = stoaryboard.instantiateViewController(identifier: "mainVC") as! UINavigationController
             mainVc.modalPresentationStyle = .fullScreen
             self.present(mainVc, animated: true, completion: nil)
        
    }
}

