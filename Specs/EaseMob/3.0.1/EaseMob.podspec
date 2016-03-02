Pod::Spec.new do |spec|
  spec.name         = 'EaseMob'
  spec.version      = '3.0.1'
  spec.summary      = 'The iOS SDK for EaseMob IM cloud service.'
  spec.homepage     = 'https://github.com/jcccn/EaseMob-SDK-iOS'
  spec.author       = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  spec.license      = { :type => 'Copyright', :text => <<-LICENSE
                       © 北京易掌云峰科技有限公司2015 京ICP备14026002号
                       LICENSE
                     }
  spec.source       =  {:git => 'https://github.com/jcccn/EaseMob-SDK-iOS.git', :tag => '3.0.1'}
  spec.platform     = :ios, '6.0'
  spec.requires_arc = true
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-lObjC'}

  spec.default_subspec = 'ChatService'

  ### Subspecs

  spec.subspec 'ChatService' do |chats|
    chats.requires_arc = true
    chats.source_files = "HyphenateSDK/**/*.{h}"
    chats.frameworks = 'CoreMedia', 'AudioToolbox', 'AVFoundation', 'MobileCoreServices', 'ImageIO', 'SystemConfiguration'
    chats.libraries  = 'c++', 'resolv', 'z', 'tdc++.6.0.9', 'sqlite3'
    chats.vendored_libraries = 'HyphenateSDK/lib/libHyphenateSDK.a'
  end

end
