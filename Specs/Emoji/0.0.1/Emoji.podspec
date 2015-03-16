Pod::Spec.new do |s|
  s.name     = 'Emoji'
  s.version  = '0.0.1'
  s.summary  = 'Classes for quick access to Emoji symbols.'
  s.homepage = 'https://github.com/jcccn/Emoji'
  s.author   = { 'Chuncheng Jiang' => 'jccuestc@gmail.com' }
  s.license  = { :type => 'Copyright', :text => <<-LICENSE
    © https://github.com/limejelly/Emoji
    LICENSE
  }
  s.source   = { :git => 'https://github.com/jcccn/Emoji.git', :tag => '0.0.1' }
  s.source_files = "*.{h,m}"
  s.platform     = :ios, '5.0'
  s.frameworks   = "Foundation"
  s.requires_arc = true
end
