Pod::Spec.new do |s|
  s.name     = 'ENML-Converter'
  s.version  = '0.0.1'
  s.summary  = 'An iOS library to convert html to/from ENML, Evernote‘s XHTML format.'
  s.homepage = 'https://github.com/jcccn/ENML-Converter'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = 'MIT'
  s.source   = { :git => 'https://github.com/jcccn/ENML-Converter.git', :tag => s.version }
  s.source_files = 'EnmlConverter/EnmlConverter/*.{h,m}'
  s.frameworks   = 'Foundation'
  s.platform     = :ios, '5.1.1'
  s.requires_arc = true

  s.dependency 'CTidy'
  s.dependency 'MWFeedParser/NSString+HTML'
  s.dependency 'hpple'
  
end
