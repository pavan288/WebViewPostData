//
//  ViewController.swift
//  WebViewPost
//
//  Created by Pavan Powani on 21/01/19.
//  Copyright © 2019 Pavan Powani. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.load(postTodos())
    }

    func getTodos() -> URLRequest {
        let mockURL = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
        return URLRequest(url: mockURL)
    }

    func postTodos() -> URLRequest {
        let mockURL = URL(string: "https://jsonplaceholder.typicode.com/todos/")!
        let body = String(format: "title=%@&body=%@&userId=%@", "pjp288", "Pavan J Powani", "1")
        var request = URLRequest(url: mockURL)
        request.httpMethod = "POST"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = body.data(using: .ascii, allowLossyConversion: true)!

        return request
    }


}

