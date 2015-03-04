Pod::Spec.new do |s|
  s.name     = 'Frontia'
  s.version  = '2.0.2'
  s.summary  = 'The iOS SDK for Baidu Frontia.'
  s.homepage = 'https://github.com/jcccn/Baidu-Frontia-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   ©2014 Baidu
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/Baidu-Frontia-SDK-iOS.git', :tag => '2.0.2' }
  s.platform     = :ios, '5.0'
  s.frameworks   = "SystemConfiguration", "MessageUI", "QuartzCore", "UIKit", "Foundation", "CoreGraphics", "CoreTelephony", "CoreLocation"
  s.libraries  = 'sqlite3', 'stdc++', 'z'
  s.vendored_frameworks = 'Frontia/Frontia.framework'
  s.resources = 'Frontia/FrontiaSource.bundle'
  s.requires_arc = true

  s.dependency 'Frontia/QQ'

  s.subspec 'QQ' do |qq|
    qq.requires_arc = true
    qq.frameworks = 'Security'
    qq.libraries  = 'stdc++', 'sqlite3'
    qq.vendored_frameworks = 'QQ/TencentOpenAPI.framework'
    qq.resources = "QQ/TencentOpenApi_IOS_Bundle.bundle"
  end

end
