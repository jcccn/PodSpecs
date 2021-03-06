Pod::Spec.new do |s|
  s.name     = 'UMFeedback'
  s.version  = '1.4.2'
  s.summary  = 'Umeng Feedback is the leading mobile app feedback platform in China.'
  s.homepage = 'https://github.com/jcccn/UMeng-Feedback-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2011-2015 Umeng.com , All Rights Reserved.
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/UMeng-Feedback-iOS.git', :tag => '1.4.2' }
  s.source_files = 'UMFeedback/UMFeedback.h'
  s.platform     = :ios, '5.0'
  s.frameworks   = "UIKit"
  s.vendored_libraries = 'UMFeedback/libUMFeedback.a'
  s.resources = "UMFeedback/umFeedback.bundle"
  s.requires_arc = true
end
