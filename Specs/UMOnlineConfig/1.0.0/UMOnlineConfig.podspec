Pod::Spec.new do |s|
  s.name     = 'UMOnlineConfig'
  s.version  = '1.0.0'
  s.summary  = 'Umeng Online Config is the online config system from Umeng.'
  s.homepage = 'https://github.com/jcccn/UMeng-OnlineConfig-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2011-2015 Umeng.com , All Rights Reserved.
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/UMeng-OnlineConfig-iOS.git', :tag => '1.0.0' }
  s.source_files = 'UMOnlineConfig/*.{h,m}'
  s.platform     = :ios, '5.0'
  s.frameworks   = 'UIKit'
  s.vendored_libraries = 'UMOnlineConfig/libUMOnlineConfig.a'
  s.requires_arc = true
end
