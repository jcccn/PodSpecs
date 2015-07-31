Pod::Spec.new do |s|
  s.name     = 'JPush'
  s.version  = '1.8.5'
  s.summary  = 'JPush极光推送是中国优秀的消息推送服务平台，让开发者可以向其APP的用户推送通知或者消息，与用户互动。深圳市和讯华谷信息技术有限公司旗下产品。'
  s.homepage = 'https://github.com/jcccn/JPush-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   深圳市和讯华谷信息技术有限公司     极光推送 版权所有 ©2011-2015
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/JPush-SDK-iOS.git', :tag => '1.8.5' }
  s.source_files = 'JPush/APService.h'
  s.platform     = :ios, '5.0'
  s.frameworks   = 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation', 'UIKit', 'Security'
  s.libraries  = 'z'
  s.vendored_libraries = "JPush/*.a"
  s.requires_arc = true
end
