Pod::Spec.new do |s|
  s.name         = "RMAppStoreVersionCheck"
  s.version      = "1.0.0"
  s.summary      = "A block based ios library for checking for app store updates"

  s.description  = "Uses reachability to wait for network connectivity before checking the app store for new versions of the app."

  s.homepage     = "https://github.com/rocketmade/RMAppStoreVersionCheck.git"

  s.license      = "MIT"
  s.author       = { "Brandon Roth" => "brandon@rocketmade.com" }

  s.source       = { :git => "https://github.com/rocketmade/RMAppStoreVersionCheck.git", :tag => "1.0.0" }
  s.source_files  = "RMAppStoreVersionCheck/**/*.{h,m}"

   s.framework  = "SystemConfiguration"

   s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
