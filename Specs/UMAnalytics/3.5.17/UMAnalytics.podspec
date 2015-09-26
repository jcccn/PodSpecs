Pod::Spec.new do |s|
  s.name     = 'UMAnalytics'
  s.version  = '3.5.17'
  s.summary  = 'Umeng Analytics is the leading mobile app analytical platform in China.'
  s.homepage = 'https://github.com/jcccn/UMeng-Analytics-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2011-2015 Umeng.com , All Rights Reserved.
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/UMeng-Analytics-iOS.git', :tag => '3.5.17' }
  s.source_files = "UMAnalytics/*.{h,m}"
  s.platform     = :ios, '5.0'
  s.frameworks   = "UIKit"
  s.libraries    = 'z'
  s.vendored_libraries = 'UMAnalytics/libMobClickLibrary.a'
  s.requires_arc = true
end
