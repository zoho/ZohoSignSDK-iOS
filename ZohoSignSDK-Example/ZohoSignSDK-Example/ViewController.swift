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
    
    @IBOutlet weak var signIDTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signIDTextView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        signIDTextView.text = "234b4d535f4956238bd6f78e14cc41e8bb0a94f6fcdb67693ed14e1bedcce6cfc07b8016a328b5f668f117a06392244b2beddb80d9690814cf59896749144d9428cc3995e0cb48395257a9f805bfdab20447fd0144359b50"
                
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

