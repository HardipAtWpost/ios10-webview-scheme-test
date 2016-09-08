//
//  ViewController.swift
//  TestWebViewDelegation
//
//  Created by Singh, Hardip on 9/7/16.
//  Copyright © 2016 Hardip. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {

        let webString = "<html><body><a href=\"foo://hi\">hello</a></body></html>"
        webView.loadHTMLString(webString, baseURL: nil)
        webView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print(request.url?.absoluteString)
        return true
    }

}

