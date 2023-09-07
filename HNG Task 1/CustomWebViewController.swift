//
//  CustomWebViewController.swift
//  HNG Task 1
//
//  Created by Yusuf Akeem on 08/09/2023.
//

import UIKit
import WebKit

class CustomWebViewController: UIViewController {
    
    private let webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .systemFont(ofSize: 10, weight: .black)
        button.addTarget(self, action: #selector(handleCancelButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        loadGithubPage()
    }
    
    private func setupViews() {
        prepareViews()
        prepareConstraints()
    }
    
    private func prepareViews() {
        view.addSubview(webView)
        view.addSubview(cancelButton)
    }
    
    private func prepareConstraints() {
        cancelButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        cancelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        
        webView.topAnchor.constraint(equalTo: cancelButton.bottomAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    @objc func handleCancelButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func loadGithubPage() {
        if let url = URL(string: "https://github.com/harkeyhim") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}


