Pod::Spec.new do |s|
  s.name     = 'UMFeedback'
  s.version  = '2.1.1'
  s.summary  = 'Umeng Feedback is the leading mobile app feedback platform in China.'
  s.homepage = 'https://github.com/jcccn/UMeng-Feedback-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2011-2015 Umeng.com , All Rights Reserved.
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/UMeng-Feedback-iOS.git', :tag => '2.1.1' }
  s.source_files = 'UMFeedback/*.{h,m}', 'UMFeedback/UMOpus/*.{h,m}'
  s.platform     = :ios, '5.0'
  s.frameworks   = 'UIKit', 'AVFoundation'
  s.vendored_libraries = 'UMFeedback/libUMFeedback.a', 'UMFeedback/UMOpus/libUMOpus.a'
  s.resources = 'UMFeedback/zh-Hans.lproj/UMFeedbackLocalizable.strings', 'UMFeedback/Resources/*.{png}'
  s.requires_arc = true
end
