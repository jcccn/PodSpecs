Pod::Spec.new do |s|
  s.name     = 'GKActionSheet'
  s.version  = '0.0.2'
  s.summary  = 'GKActionSheet is an action sheet with a grid-like layout.'
  s.homepage = 'https://github.com/jcccn/GKActionSheet'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = 'MIT'
  s.source   = { :git => 'https://github.com/jcccn/GKActionSheet.git', :tag => s.version }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'

  s.source_files = 'GKActionSheet/GKActionSheet.{h,m}'

end
