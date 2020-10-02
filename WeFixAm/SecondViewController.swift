//
//  SecondViewController.swift
//  WeFixAm
//
//  Created by MacMini on 30/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController,  WKUIDelegate, WKNavigationDelegate  {
    var webView: WKWebView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var error:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        error.isHidden = true
         activityIndicator.startAnimating()
            let myURL = URL(string:"https://www.wefixam.com/login")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
         webView.allowsBackForwardNavigationGestures = true
        webView.allowsLinkPreview = true
    }

    override func loadView() {
       // let webConfiguration = WKWebViewConfiguration()
        //webView = WKWebView(frame: .zero, configuration: webConfiguration)
        //webView.uiDelegate = self
        super.loadView()
        //activityIndicator.color = .black
        //activityIndicator.style = .large
       
        webView = WKWebView()
        webView.navigationDelegate = self
       
     }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //activityIndicator.stopAnimating()
         view = webView
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        view = self.view
        self.error.isHidden = false
        self.activityIndicator.isHidden = false
    }
}

