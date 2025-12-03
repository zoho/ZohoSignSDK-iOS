//
//  ViewController.swift
//  ZohoSignSDK-Example
//
//  Created by Nagarajan S on 16/08/21.
//

import UIKit
import ZohoSignSDK



class ViewController: UIViewController {

//    lazy var signClient : ZohoSignClient = {
//        let zsClient = ZohoSignClient()
//        zsClient.delegate = self
//        zsClient.dataSource = self
//        zsClient.skipDocumentDetailsPage = true
//        zsClient.skipTermsAndConditionPage = true
//        return zsClient
//    }()
//    
    @IBOutlet weak var signIDTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signIDTextView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        signIDTextView.text = "234b4d535f4956236efadf2854eac6d8ad090975b3ae83aa561040ba38cef7db41a6509b5650ad6deea0dd0ee456e80019648d527fdbb70773b27dd10d37b38e2da66a163904719ecb1f0a17c654b02f98cbe4d516b91252"
                
    }


    @IBAction func signDocument(_ sender: Any) {
//        signClient.presentSigningViewController(signID: signIDTextView.text ?? "", from: self)
    }
}



//extension ViewController : ZohoSignClientDelegate{
//    func zohosignClientDidFinishSigning(signID: String) {
//        //Success Handling
//    }
//    
//    func zohosignClientDidFailed(error: ZSError) {
//        //Error handling
//    }
//    
//    func zohosignClientDidSigningCancelledByUser() {
//        //User cancelled
//    }
//}
//
//
//extension ViewController : ZohoSignClientDataSource{
//    func requestUserAgent() -> String {
//        /*var systemVersion = UIDevice.current.systemVersion
//        var systemModel = UIDevice.current.model
//        if DeviceType.isMac {
//            systemVersion = ProcessInfo.processInfo.operatingSystemVersionString
//            systemModel   = "Mac OS X"
//        }
//        
//        let userAgent_string = String(format: "Zoho Sign/%@(%@)/%@(%@)", Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String,
//                                      Bundle.main.infoDictionary?["CFBundleVersion"] as! String,
//                                      systemModel, systemVersion)
//         return userAgent_string
//         */
//        return "ZohoSignSDK Example (1.0)"
//    }
//    
//    func clientAppId() -> String {
//        return "com.example.test" //just for our reference and track
//    }
//    
//}
//
