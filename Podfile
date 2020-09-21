platform :ios, '13.0'
 
 use_frameworks!
 
# Pods for OnoKit

def basePods

  # Core

  pod 'ObjectMapper', '~> 3.5.1'
  pod 'Alamofire', '~> 5.0.0'

  # UI

  pod 'SVProgressHUD', '~> 2.2.5'
  pod 'SnapKit', '~> 5.0.0'
  
  # Util
  
  pod 'KeychainAccess', '~> 4.1.0'
  pod 'SwiftLint', '~> 0.40.0'

end
  
target 'OnoKit' do
  basePods
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end

