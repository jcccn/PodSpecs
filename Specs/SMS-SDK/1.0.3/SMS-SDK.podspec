Pod::Spec.new do |s|
  s.name     = 'SMS-SDK'
  s.version  = '1.0.3'
  s.summary  = 'SMS-SDK is a SMS verifying kit.'
  s.homepage = 'https://github.com/jcccn/SMS-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2012-2014 mob All Rights Reserved 掌淘网络 版权所有
                 LICENSE
               }
  s.source   = { :git => 'https://github.com/jcccn/SMS-SDK-iOS.git', :tag => '1.0.3' }
  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.default_subspec = 'UI'

  non_arc_files = 'SMS-SDK/SMS_UILib/SMS_HYZBadgeView.{h,m}', 'SMS-SDK/SMS_UILib/SMS_MBProgressHUD.{h,m}', 'SMS-SDK/SMS_UILib/SMS_MBProgressHUD+Add.{h,m}'

  ### Subspecs

  s.subspec 'Core' do |cs|
    cs.requires_arc = true
    cs.frameworks = 'UIKit', 'CoreGraphics', 'Foundation', 'MessageUI'
    cs.libraries  = 'icucore', 'z'
    cs.vendored_frameworks = 'SMS-SDK/SMS_SDK.framework'
  end

  s.subspec 'UI' do |uis|
    uis.requires_arc = true
    uis.dependency 'SMS-SDK/Core'
    uis.dependency 'SMS-SDK/UI/no-arc'
    uis.frameworks = 'UIKit', 'CoreGraphics', 'Foundation', 'AddressBookUI', 'AddressBook', 'MessageUI'
    uis.source_files = "SMS-SDK/SMS_UILib/*.{h,m}", "SMS-SDK/UI/*.{h,m}", "Demo/*.{h,m}"
    uis.exclude_files = non_arc_files
    uis.resources = 'SMS-SDK/UI/smssdk.bundle'

    uis.subspec 'no-arc' do |una|
      una.requires_arc = false
      una.source_files = non_arc_files
    end

  end

end
