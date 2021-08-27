# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'HibridPlayerIOS' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for HibridPlayerIOS
  
  pod 'GoogleAnalytics'

end

post_install do |installer|
  system("echo '/* START post install scripts */'")
  system("cp module.modulemap.dist Pods/Headers/Public/GoogleAnalytics/module.modulemap && echo '- Fixed import of GoogleAnalytics module'")
  system("echo '/* END post install scripts */'")
end
