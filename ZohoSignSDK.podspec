#
# Be sure to run `pod lib lint ZohoSignSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZohoSignSDK'
  s.version          = '1.0'
  s.summary          = 'iOS SDK for eSigning Zoho Sign documents.'

  s.homepage         = 'https://www.zoho.com/sign/'
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  s.author           = { 'ME Mobile' => 'memobile@zohocorp.com' }
  s.source           = { :git => 'https://github.com/zoho/ZohoSignSDK-iOS.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/zohosign'

  s.ios.deployment_target = '15.0'

 # s.source_files = 'ZohoSignSDK/ZohoSignSDK.xcframework'
  s.ios.vendored_frameworks = "ZohoSignSDK/ZohoSignSDK.xcframework"
  # s.preserve_paths   = "ZohoSignSDK/ZohoSignSDK.xcframework"
  s.requires_arc = true

  s.dependency 'AMPopTip'
  s.dependency 'SSZipArchive'
  s.dependency 'Alamofire'
  s.dependency 'SVProgressHUD'
  s.dependency 'SnapKit'
  s.swift_versions = ['5.0']

  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  s.user_target_xcconfig = {
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  # s.pod_target_xcconfig = {
  #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  # }
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.resource_bundles = {
  #   'ZohoSignSDK' => ['ZohoSignSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
