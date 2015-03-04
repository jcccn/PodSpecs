Pod::Spec.new do |s|
  s.name     = 'UMMessage'
  s.version  = '1.1.0'
  s.summary  = 'Umeng Message is a leading mobile app push platform in China.'
  s.homepage = 'https://github.com/jcccn/UMeng-Message-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2011-2015 Umeng.com , All Rights Reserved.
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/UMeng-Message-iOS.git', :tag => '1.1.0' }
  s.source_files = "UMMessage/*.{h,m}"
  s.platform     = :ios, '5.0'
  s.frameworks   = "UIKit"
  s.libraries    = 'z'
  s.vendored_libraries = "UMMessage/*.a"
  s.requires_arc = true
end
