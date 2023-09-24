# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'HW-11' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for HW-11

pod 'SnapKit'

end
post_install do |installer|
     installer.pods_project.targets.each do |target|
         target.build_configurations.each do |config|
            if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12.0
              config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
            end
         end
     end
  end