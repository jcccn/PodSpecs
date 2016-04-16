Pod::Spec.new do |s|
  s.name     = 'TIMSDK-iOS'
  s.version  = '1.8.1'
  s.summary  = '云通信（Instant Messaging）承载亿级QQ用户即时通信技术，数十年技术积累，腾讯云为您提供超乎寻常即时通信聊天服务'
  s.homepage = 'https://github.com/jcccn/TIM-SDK-iOS'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright ©2013-2016 Qcloud.com. All Rights Reserved. 腾讯云 版权所有
                 LICENSE
               }
  s.source   = { :git => 'https://git.coding.net/jcccn/TIM-SDK-iOS.git', :tag => s.version }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.default_subspec = 'Normal'

  ### Subspecs

  s.subspec 'Full' do |full|
    full.requires_arc = true
    full.dependency 'TIMSDK-iOS/Normal'
    full.dependency 'TIMSDK-iOS/IMSDKBugly'
    full.dependency 'TIMSDK-iOS/IMBeaconAPI_SDKBase'
    full.dependency 'TIMSDK-iOS/QALHttpSDK'
  end

  s.subspec 'Normal' do |normal|
    normal.requires_arc = true
    normal.dependency 'TIMSDK-iOS/Required'
    normal.dependency 'TIMSDK-iOS/IMCore'
  end

  s.subspec 'Required' do |required|
    required.requires_arc = true
    required.dependency 'TIMSDK-iOS/ImSDK'
    required.dependency 'TIMSDK-iOS/QALSDK'
    required.dependency 'TIMSDK-iOS/TLSSDK'
  end

  ### item subscpecs

  s.subspec 'ImSDK' do |imsdk|
    imsdk.requires_arc = true
    imsdk.frameworks = 'CoreTelephony', 'SystemConfiguration'
    imsdk.libraries  = 'c++', 'z', 'sqlite3'
    imsdk.vendored_frameworks = 'TIM/ImSDK.framework'
  end

  s.subspec 'QALSDK' do |qalsdk|
    qalsdk.requires_arc = true
    qalsdk.frameworks = 'CoreTelephony', 'SystemConfiguration'
    qalsdk.libraries  = 'c++', 'z', 'sqlite3'
    qalsdk.vendored_frameworks = 'TIM/QALSDK.framework'
  end

  s.subspec 'TLSSDK' do |tlssdk|
    tlssdk.requires_arc = true
    tlssdk.frameworks = 'CoreTelephony', 'SystemConfiguration'
    tlssdk.libraries  = 'c++', 'z', 'sqlite3'
    tlssdk.vendored_frameworks = 'TIM/TLSSDK.framework'
  end

  s.subspec 'IMCore' do |imcore|
    imcore.requires_arc = true
    imcore.frameworks = 'CoreTelephony', 'SystemConfiguration'
    imcore.libraries  = 'c++', 'z', 'sqlite3'
    imcore.vendored_frameworks = 'TIM/IMCore.framework'
  end

  s.subspec 'IMSDKBugly' do |imsdkbugly|
    imsdkbugly.requires_arc = true
    imsdkbugly.frameworks = 'CoreTelephony', 'SystemConfiguration'
    imsdkbugly.libraries  = 'c++', 'z', 'sqlite3'
    imsdkbugly.vendored_frameworks = 'TIM/IMSDKBugly.framework'
  end

  s.subspec 'IMBeaconAPI_SDKBase' do |imbeaconapi|
    imbeaconapi.requires_arc = true
    imbeaconapi.frameworks = 'CoreTelephony', 'SystemConfiguration'
    imbeaconapi.libraries  = 'c++', 'z', 'sqlite3'
    imbeaconapi.vendored_frameworks = 'TIM/IMBeaconAPI_SDKBase.framework'
  end

  s.subspec 'QALHttpSDK' do |qalhttpsdk|
    qalhttpsdk.requires_arc = true
    qalhttpsdk.frameworks = 'CoreTelephony', 'SystemConfiguration'
    qalhttpsdk.libraries  = 'c++', 'z', 'sqlite3'
    qalhttpsdk.vendored_frameworks = 'TIM/QALHttpSDK.framework'
  end

end
