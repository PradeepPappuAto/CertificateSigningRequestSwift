Pod::Spec.new do |s|

  s.name         = "CertificateSigningRequestSwift"
  s.version      = "0.0.994"
  s.summary      = "Generate a self-signed certificate signing request (CSR) in iOS using Swift"

  s.description  = <<-DESC 
  	CertificateSigningRequest creates a self-signed CSR's directly an iOS devices
                   DESC

  s.homepage     = "https://github.com/cbaker6/CertificateSigningRequestSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Corey Baker" => "coreyearleon@icloud.com" }
  s.platform     = :ios, "9.3"

  s.source       = { :git => "https://github.com/cbaker6/CertificateSigningRequestSwift.git", :tag => "#{s.version}" }


  s.source_files  = "CertificateSigningRequestSwift/**/*.swift"
  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/Arcane/CocoaPods/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/Arcane/CocoaPods/iphonesimulator',
    'SWIFT_VERSION' => '4.0'
  }
end
