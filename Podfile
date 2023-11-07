# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'KDATest' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for KDATest
    pod 'Kingfisher', '~> 7.10.0'
    pod 'MaterialComponents/Snackbar'
    pod 'Alamofire', '~> 5.8.1'

  target 'KDATestTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'KDATestUITests' do
    # Pods for testing
  end

end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
               end
          end
   end
end