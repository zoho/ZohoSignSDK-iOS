# ZohoSignSDK

ZohoSignSDK provides easy to use of methods to sign a document with your iOS Mobile Application.

## Feature
 - [x] Supports all ZohoSign document fields (Signature, Initial, Stamp, Name, Company, Job title, Sign Date, Custom Textfield, Dropdown, Radio button, Attachment, Checkbox)
 - [x] Supports all signature creation methods like Draw, Type, Capture
 - [x] Supports Light/Dark mode
 - [x] built-in document scanner for uploading attachments
 - [x] Intuitive signing experience 
 - [x] Supports print and upload signed document 
 - [x] Supports two-factor Validation for signing document
 - [x] Supports iPhone, iPad & macCatalyst 
 - [x] Supports 20 Languages 
 
## Requirements

* iOS 11.0+ 
* Xcode 10.0+
* Swift 5.0+

## Installation
Installation using Cocoapods

You can integrate ZohoSignSDK in your application using [CocoaPods](https://cocoapods.org) using the ZohoSignSDK pod. Here is an example Podfile where ZohoSignSDK is included.

```ruby
platform :ios, '11.0'

target 'Project Target' do
  use_frameworks!
  pod 'ZohoSignSDK', '~> 1.0.3-Beta'
end
```

After ZohoSignSDK is added to your Podfile, run the ``` pod install``` command to complete the Installation.


## Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate ZohoSignSDK into your project manually.

## Usage

### Quick Start

```ruby
import ZohoSignSDK

class MyViewController: UIViewController {

    lazy var signClient : ZohoSignClient = {
        let zsClient = ZohoSignClient()
        zsClient.delegate = self
        zsClient.dataSource = self
        zsClient.skipDocumentDetailsPage = true
        zsClient.skipTermsAndConditionPage = true
        return zsClient
    }()

    func signDocument() {
          signClient.presentSigningViewController(signID: #DOCUMENT_SIGN_ID_TO_BE_SIGNED#, 
                     from: self)
    }

}
```


### Delegates
```ruby
extension MyViewController : ZohoSignClientDelegate{
    func zohosignClientDidFinishSigning(signID: String) {
        ##Success Handling
    }
    
    func zohosignClientDidFailed(error: ZSError) {
        ##Error handling
    }
    
    func zohosignClientDidSigningCancelledByUser() {
        ##User cancelled
    }
}
```

### DataSource
```ruby
extension ViewController : ZohoSignClientDataSource{
    func requestUserAgent() -> String {
            return #Useragent you want to set as header in request calls#>\
    }

    func clientAppId() -> String {
            return "YOUR APP ID" ##just for our reference and track
    }
}
```

## Localizations

ZohoSignSDK has ready-to-use localizations for:

* English ```en```
* English-UK ```en-GB```
* Dutch ```nl```
* German ```de```
* Italian ```it```
* Filipino ```fil```
* Spanish ```es```
* Swedish ```sv```
* French ```fr```
* Norwegian Bokmal ```nb```
* Polish ```pl```
* Portuguese(Brazil) ```pt-BR```
* Portuguese(Portugal) ```pt-PT```
* Russian ```ru```
* Chinese Simplified Han ```zh_Hans```
* Chinese Traditional ```zh_Hant```
* Turkish ```tr```
* vietnamese ```vi```
* korean ```ko```
* Japanese ```ja```

## Keys in Info.plist

You need to add some keys to the Info.plist file with descriptions, per Apple's requirement(s). You can get a plist of keys for permissions as follows:

List of keys:

* NSCameraUsageDescription - This app needs access to camera to scan and capture signatures or documents. 
* NSContactsUsageDescription - Allow access to your address book to add contacts directly to the app.
* NSPhotoLibraryUsageDescription - This app needs access to camera roll to upload documents that you've already captured.


## Give Feedback

Please report bugs or issues to support@zohosign.com
