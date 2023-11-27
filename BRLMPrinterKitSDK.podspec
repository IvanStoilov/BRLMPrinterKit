Pod::Spec.new do |s|
  s.name             = 'BRLMPrinterKitSDK'
  s.version          = '4.6.7.4'
  s.summary          = "Pod for the BRLMPrinterKit / Brother's printers"
  s.description      = "This project is only a Pod for the Brother SDK v#{s.version}"
  s.homepage         = 'https://github.com/IvanStoilov/BRLMPrinterKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Stoilov' => 'stoilov.ivan@gmail.com' }
  s.source           = { :git => 'https://github.com/IvanStoilov/BRLMPrinterKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.subspec 'XCFrameworkPod' do |xcframework|
    xcframework.vendored_frameworks = 'BRLMPrinterKit/BRLMPrinterKit.xcframework'
  end
end
