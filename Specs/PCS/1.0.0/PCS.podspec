Pod::Spec.new do |s|
  s.name     = 'PCS'
  s.version  = '1.0.0'
  s.summary  = 'The iOS SDK for Baidu PCS.'
  s.homepage = 'https://github.com/jcccn/Baidu-PCS-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   ©2014 Baidu
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/Baidu-PCS-SDK-iOS.git', :tag => '1.0.0' }
  s.platform     = :ios, '5.0'
  s.frameworks   = "UIKit", "Foundation", "CoreGraphics"
  s.vendored_libraries = 'PCS/baidu_pcs_ios-1.0.a'
  s.source_files = "PCS/*.h"
  s.requires_arc = true

end
