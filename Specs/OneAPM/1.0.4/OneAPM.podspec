Pod::Spec.new do |s|
  s.name     = 'OneAPM'
  s.version  = '1.0.4'
  s.summary  = 'OneAPM是一家应用性能管理云解决方案提供方。'
  s.homepage = 'https://github.com/jcccn/OneAPM-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   版权所有 © 2008-2015 北京蓝海讯通科技有限公司
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/OneAPM-iOS.git', :tag => '1.0.4' }
  s.platform     = :ios, '6.0'
  s.frameworks   = 'SystemConfiguration', 'CoreTelephony', 'CoreData'
  s.libraries    = 'z', 'stdc++'
  s.vendored_frameworks = 'OneAPM/OneAPM.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  s.requires_arc = true
end
