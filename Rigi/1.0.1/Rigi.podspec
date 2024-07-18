
Pod::Spec.new do |s|
  s.name              = 'Rigi'
  s.version           = '1.0.1'
  s.summary           = 'Make Rigi previews for your iOS project.'
  s.homepage          = 'https://rigi.io'
  s.author            = { 'Name' => 'dimitri@rigi.io' }
  s.license           = { :type => 'Copyright', :text => 'Copyright 2022 Rigi.io'}

  s.source            = { :http => 'https://github.com/HenkBoxma/rigi-ios/raw/main/Releases/Rigi-1.0.1.zip' }
  
  s.swift_versions    = '5.2'
  s.platform          = :ios, '12.0'
  
  s.vendored_frameworks     = 'Rigi/Frameworks/Rigi.xcframework'
  s.preserve_paths          = ['bin/**', 'docs/**']
 
end
