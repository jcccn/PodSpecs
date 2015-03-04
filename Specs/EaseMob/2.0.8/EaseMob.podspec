Pod::Spec.new do |spec|
  spec.name         = 'EaseMob'
  spec.version      = '2.0.8'
  spec.summary      = 'The iOS SDK for EaseMob IM cloud service.'
  spec.homepage     = 'https://github.com/jcccn/EaseMob-SDK-iOS'
  spec.author       = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  spec.license      = { :type => 'Copyright', :text => <<-LICENSE
                       ©2014 EaseMob Inc.
                       LICENSE
                     }
  spec.source       =  {:git => 'https://github.com/jcccn/EaseMob-SDK-iOS.git', :tag => '2.0.8'}
  spec.source_files = "EaseMobSDK/**/*.{h}"
  spec.platform     = :ios, '6.0'
  spec.requires_arc = true
  spec.frameworks = 'Foundation', 'UIKit', 'MapKit', 'ImageIO', 'CoreLocation', 'Security', 'MobileCoreServices',  'SystemConfiguration', 'AddressBook', 'CFNetwork', 'CoreGraphics'
  spec.libraries    = 'iconv', 'xml2', 'z', 'resolv', 'stdc++'
  spec.resource     = 'EaseMobSDK/resources/EaseMob.bundle'
  spec.vendored_libraries = 'EaseMobSDK/lib/libEaseMobClientSDKLite.a'
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-lObjC'}
end
