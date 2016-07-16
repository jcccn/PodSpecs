Pod::Spec.new do |s|
  s.name     = 'SMS-SDK'
  s.version  = '2.0.5'
  s.summary  = 'SMS-SDK is a SMS verifying kit.'
  s.homepage = 'https://github.com/jcccn/SMS-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2012-2015 mob All Rights Reserved 掌淘网络 版权所有
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/SMS-SDK-iOS.git', :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.dependency 'MOBFoundation'

  s.frameworks          = "MessageUI", "AddressBook", "AddressBookUI", "JavaScriptCore"
  s.libraries           = "icucore", "z", "stdc++"
  s.vendored_frameworks = 'SMS-SDK/SMS_SDK.framework'
  s.resources           = 'SMS-SDK/SMSSDKUI.bundle'

end
