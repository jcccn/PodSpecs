Pod::Spec.new do |s|
  s.name     = 'JMessage'
  s.version  = '1.0.2'
  s.summary  = '极光IM（JMessage）是 Jpush 的 IM 服务。JPush极光推送是中国优秀的消息推送服务平台，让开发者可以向其APP的用户推送通知或者消息，与用户互动。深圳市和讯华谷信息技术有限公司旗下产品。'
  s.homepage = 'https://github.com/jcccn/JMessage-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   深圳市和讯华谷信息技术有限公司     极光推送 版权所有 ©2011-2015
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/JMessage-SDK-iOS.git', :tag => '1.0.2' }
  s.platform     = :ios, '6.0'
  s.frameworks   = 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation', 'UIKit', 'Security', 'AudioToolbox', 'CoreAudio'
  s.libraries  = 'z', 'sqlite3.0'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.vendored_frameworks = "JMessage/JMessage.framework"
  s.requires_arc = true
end
