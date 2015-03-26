Pod::Spec.new do |s|
  s.name     = 'BaiduPush'
  s.version  = '1.3.0'
  s.summary  = 'BPush is a push service powered by Baidu Open Cloud.'
  s.homepage = 'https://github.com/jcccn/Baidu-Push-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   © 2015 Baidu
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/Baidu-Push-SDK-iOS.git', :tag => '1.3.0' }
  s.source_files = "BaiduPush/*.{h,m}"
  s.platform     = :ios, '5.1'
  s.frameworks   = 'Foundation', 'CoreTelephony', 'SystemConfiguration'
  s.libraries    = 'z'
  s.vendored_libraries = 'BaiduPush/libBPush.a'
  s.requires_arc = true
end
