Pod::Spec.new do |s|

s.name             = 'HibridPlayerIOS'  
s.version          = '0.2.1'  
s.summary          = 'HibridPlayerIOS' 
# s.description      = <<-DESC 
# 			"HibridPlayerIOS"
# 	           	DESC

s.homepage         = 'https://github.com/Bo-Bogdan/HibridPlayerIOS.git' 
s.license          = 'MIT'
# s.license = "Copyright © 2020 Appuchino. All rights reserved."
s.author           = { 'Bo-Bogdan' => 'bo190288@gmail.com' } 
s.source           = { :git => 'https://github.com/Bo-Bogdan/HibridPlayerIOS.git', :tag => s.version, :submodules => true } 

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

 