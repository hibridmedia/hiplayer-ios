Pod::Spec.new do |s|

s.name             = 'HibridPlayerIOS'  
s.version          = '0.0.1'  
s.summary          = 'Hibrid player is a library on swift.'
# s.description      = <<-DESC 
# 			"Hibrid player is a library on swift."
# 	           	DESC

s.homepage         = 'https://github.com/hibridmedia/hiplayer-ios.git' 
s.license          = 'MIT'
# s.license = "Copyright © 2021 Hibridmena. All rights reserved."
s.author           = { 'hibridmedia' => 'info@hibridmena.com' } 
s.source           = { :git => 'https://github.com/hibridmedia/hiplayer-ios.git', :tag => s.version, :submodules => true } 

s.platforms = { :ios => "13.0" }
s.swift_version = "5.0"
s.source_files  = "**/*.swift", "**/*.h"
s.resources = "**/*.xib", "**/*.png"
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

s.vendored_frameworks = '**/HibridStreamPlayer.framework'
s.preserve_paths = '**/HibridStreamPlayer.framework', '**/*.modulemap'

s.static_framework = true
s.requires_arc = true
s.dependency     'GoogleAnalytics'
s.dependency     'GoogleAds-IMA-iOS-SDK', '~> 3.12.0'

end

 