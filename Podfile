# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TaskOne' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for TaskOne




  pod 'BEMCheckBox'
  pod 'Cosmos'
  pod 'Kingfisher'
  pod 'Firebase/Core'
  pod 'Firebase/Messaging'
  pod 'NotificationBannerSwift'
  pod 'IQKeyboardManagerSwift'
  pod 'Alamofire'
  pod 'ImageSlideshow', '~> 1.6'
  pod 'ImageSlideshow/Kingfisher'
  pod 'GoogleMaps'
  pod 'SwiftyJSON', '~> 4.0'
  pod 'GooglePlaces'
  pod 'SwiftEntryKit'
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  pod 'Localize-Swift', '~> 3.2'
  pod "TLPhotoPicker"
  pod 'SKActivityIndicatorView'
  pod 'Socket.IO-Client-Swift', '~> 15.2.0'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      config.build_settings["ONLY_ACTIVE_ARCH"] = "YES"
    end
  end
  end


end





