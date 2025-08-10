//
//  ViewController.swift
//  MyWebBrowser
//
//  Created by opfic on 8/9/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    // MARK: IBOutlets
    @IBOutlet var webView: WKWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    // MARK: - Methods
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.webView.navigationDelegate = self
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let firstPageURL: URL?
        
        if let lastURL = UserDefaults.standard.url(forKey: lastPageURLDefaultsKey) {
            firstPageURL = lastURL
        }
        else {
            firstPageURL = URL(string: "https://www.google.com")
        }
        
        guard let pageURL = firstPageURL else { return }
        
        let request = URLRequest(url: pageURL)
        
        self.webView.load(request)
    }
    
    // MARK: IBActions
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        self.webView.goBack()
    }
    
    @IBAction func goForward(_ sender: UIBarButtonItem) {
        self.webView.goForward()
    }
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        self.webView.reload()
    }
    
    // MARK: Custom Methods
    func showNetworkingIndicators() {
        self.activityIndicator.isHidden = false
        self.activityIndicator.startAnimating()
    }
    
    func hideNetworkingIndicators() {
        self.activityIndicator.isHidden = true
        self.activityIndicator.stopAnimating()
    }
    
    
}

extension ViewController: WKNavigationDelegate {
    
    // MARK: WKNavigationDelegate
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("did finish navigation")
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.lastPageURL = webView.url
        }
        
        webView.evaluateJavaScript("document.title") { (value: Any?, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let title = value as? String else {
                print("Title is not a string")
                return
            }
            
            self.navigationItem.title = title
        }
        
        self.hideNetworkingIndicators()
    }
        
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: any Error) {
        print("did fail navigation")
        print(error.localizedDescription)
        
        self.hideNetworkingIndicators()
        let msg = "오류: \(error.localizedDescription)"
        
        let alert = UIAlertController(title: "알림", message: msg, preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        
        alert.addAction(confirmAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("did start navigation")
        self.showNetworkingIndicators()
    }
}
