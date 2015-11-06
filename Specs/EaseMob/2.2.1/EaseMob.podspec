Pod::Spec.new do |spec|
  spec.name         = 'EaseMob'
  spec.version      = '2.2.1'
  spec.summary      = 'The iOS SDK for EaseMob IM cloud service.'
  spec.homepage     = 'https://github.com/jcccn/EaseMob-SDK-iOS'
  spec.author       = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  spec.license      = { :type => 'Copyright', :text => <<-LICENSE
                       © 环信2015 京ICP备14026002号
                       LICENSE
                     }
  spec.source       =  {:git => 'https://github.com/jcccn/EaseMob-SDK-iOS.git', :tag => '2.2.1'}
  spec.platform     = :ios, '6.0'
  spec.requires_arc = true
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-lObjC'}

  spec.default_subspec = 'ChatService'

  ### Subspecs

  spec.subspec 'ChatService' do |chats|
    chats.requires_arc = true
    chats.source_files = "EaseMobSDK/**/*.{h}"
    chats.frameworks = 'Foundation', 'UIKit', 'MapKit', 'ImageIO', 'CoreLocation', 'Security', 'MobileCoreServices',  'SystemConfiguration', 'AddressBook', 'CFNetwork', 'CoreGraphics'
    chats.libraries    = 'iconv', 'xml2', 'z', 'resolv', 'stdc++', 'sqlite3'
    chats.resource     = 'EaseMobSDK/resources/EaseMob.bundle'
    chats.vendored_libraries = 'EaseMobSDK/lib/libEaseMobClientSDKLite.a'
  end

  spec.subspec 'CallService' do |calls|
    calls.requires_arc = true
    calls.dependency 'EaseMob/ChatService'
    calls.vendored_libraries = 'EaseMobSDK/lib/libEaseMobClientSDK.a'
  end

end
