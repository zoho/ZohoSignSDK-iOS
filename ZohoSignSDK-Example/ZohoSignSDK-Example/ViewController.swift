//
//  ViewController.swift
//  ZohoSignSDK-Example
//
//  Created by Nagarajan S on 16/08/21.
//

import UIKit
import ZohoSignSDK

class ViewController: UIViewController {

    lazy var signClient : ZohoSignClient = {
        let zsClient = ZohoSignClient()
        zsClient.delegate = self
        zsClient.dataSource = self
        zsClient.skipDocumentDetailsPage = true
        zsClient.skipTermsAndConditionPage = true
        return zsClient
    }()
//    
    @IBOutlet weak var signIDTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signIDTextView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        signIDTextView.text = "234b4d535f4956236c4764f25c4ab21e67c7ab403e814118cb8423b98ae644becedf286856d306dc8eeab3532270a783cab3ce52d94f504060354d8adacfdaaf59f73ff19fb80e95a7fa2e8961b08356e186065169ff21fc"
                
    }


    @IBAction func signDocument(_ sender: Any) {
        signClient.presentSigningViewController(signID: signIDTextView.text ?? "", from: self)
    }
}



extension ViewController : ZohoSignClientDelegate{
    func zohosignClientDidFinishSigning(signID: String) {
        //Success Handling
    }
    
    func zohosignClientDidFailed(error: ZSError) {
        //Error handling
    }
    
    func zohosignClientDidSigningCancelledByUser() {
        //User cancelled
    }
}


extension ViewController : ZohoSignClientDataSource{
    func requestUserAgent() -> String {
        /*var systemVersion = UIDevice.current.systemVersion
        var systemModel = UIDevice.current.model
        if DeviceType.isMac {
            systemVersion = ProcessInfo.processInfo.operatingSystemVersionString
            systemModel   = "Mac OS X"
        }
        
        let userAgent_string = String(format: "Zoho Sign/%@(%@)/%@(%@)", Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String,
                                      Bundle.main.infoDictionary?["CFBundleVersion"] as! String,
                                      systemModel, systemVersion)
         return userAgent_string
         */
        return "ZohoSignSDK Example (1.0)"
    }
    
    func clientAppId() -> String {
        return "com.example.test" //just for our reference and track
    }
    
}

