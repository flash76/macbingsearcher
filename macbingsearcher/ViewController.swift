//
//  ViewController.swift
//  macbingsearcher
//
//  Created by flash76/whattheclap on 12/29/19.
//  Copyright © 2019 flash76/whattheclap. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    let alphabet: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    @IBOutlet weak var doneButton: NSButton!
    @IBOutlet weak var startButton: NSButton!
    @IBOutlet weak var edgeButton: NSButton!
    @IBOutlet weak var mobileButton: NSButton!
    @IBOutlet weak var helpText: NSTextField!
    @IBOutlet weak var browser: WKWebView!
    
    var searchURL = ""
    var searchTerm = ""
    var loggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginURL = URL(string:"https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1577639354&rver=6.7.6631.0&wp=MBI_SSL&wreply=https%3a%2f%2fwww.bing.com%2fsecure%2fPassport.aspx%3frequrl%3dhttps%253a%252f%252fwww.bing.com%252f%253fwlexpsignin%253d1%26sig%3d1D9C016366506DA826040F2267AD6CA1&lc=1033&id=264960&CSRFToken=3cb72a6a-169e-44d8-b97f-df9adab83b07&aadredir=1")
        let loginRequest = URLRequest(url: loginURL!)
        
        helpText.isHidden = false
        doneButton.isHidden = false
        startButton.isHidden = true
        edgeButton.isHidden = true
        mobileButton.isHidden = true
        browser.load(loginRequest)
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        loggedIn = true
        helpText.isHidden = true
        doneButton.isHidden = true
        startButton.isHidden = false
        edgeButton.isHidden = false
        mobileButton.isHidden = false
    }
    @IBAction func startClicked(_ sender: Any) {
        helpText.isHidden = true
        doneButton.isHidden = true
        recursiveThing()
    }
    
    func recursiveThing() {
        var searchRequest: URLRequest
        searchTerm = ""
        for var n in 1...3 {
            let randomIndex = Int.random(in: 0...25)
            searchTerm += alphabet[randomIndex]
            n+=1
        }
        searchURL = "https://www.bing.com/search?q=\(searchTerm)"
        searchRequest = URLRequest(url: URL(string: searchURL)!)
        browser.load(searchRequest)
    }
    @IBAction func switchToEdgeAgent(_ sender: Any) {
        var searchRequest: URLRequest
        searchTerm = ""
        for var n in 1...3 {
            let randomIndex = Int.random(in: 0...25)
            searchTerm += alphabet[randomIndex]
            n+=1
        }
        searchURL = "https://www.bing.com/search?q=\(searchTerm)"
        searchRequest = URLRequest(url: URL(string: searchURL)!)
        browser.customUserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299"
        browser.load(searchRequest)
    }
    @IBAction func switchToMobileAgent(_ sender: Any) {
        var searchRequest: URLRequest
        searchTerm = ""
        for var n in 1...3 {
            let randomIndex = Int.random(in: 0...25)
            searchTerm += alphabet[randomIndex]
            n+=1
        }
        searchURL = "https://www.bing.com/search?q=\(searchTerm)"
        searchRequest = URLRequest(url: URL(string: searchURL)!)
        browser.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1"
        browser.load(searchRequest)
    }
}

