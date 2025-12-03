Pod::Spec.new do |s|
  s.name             = 'ZohoSignSDK'
  s.version          = '1.0'
  s.summary          = 'iOS SDK for securely signing documents using Zoho Sign.'
  s.description      = <<-DESC
    ZohoSignSDK provides APIs for document signing, authentication, and secure workflows 
    using Zoho Sign from iOS applications.
  DESC

  s.homepage         = 'https://www.zoho.com/sign/'
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  s.author           = { 'ME Mobile' => 'memobile@zohocorp.com' }

  s.source           = {
    :git => 'https://github.com/zoho/ZohoSignSDK-iOS.git',
    :tag => s.version
  }

  # Deployment Target
  s.platform         = :ios, '15.5'

  # Framework (static XCFramework recommended)
  s.ios.vendored_frameworks = 'ZohoSignSDK/ZohoSignSDK.xcframework'
  s.static_framework = true

  s.requires_arc = true
  s.swift_versions = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5']

  # Dependencies (these will be dynamically resolved by CocoaPods)
  s.dependency 'AMPopTip'
  s.dependency 'SSZipArchive'
  s.dependency 'Alamofire'
  s.dependency 'SVProgressHUD'
  s.dependency 'SnapKit'

  # Build & Compatibility Settings
  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'SWIFT_COMPILATION_MODE' => 'wholemodule',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => ''
  }

  s.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.5'
  }
end
