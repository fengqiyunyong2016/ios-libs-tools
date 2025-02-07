Pod::Spec.new do |s|
  s.name = "ios-libs-tools"
  s.version = "0.1.0"
  s.summary = "A short description of ios-libs-tools."
  s.homepage         = 'https://github.com/brownfeng/ios-libs-tools'
  s.license          =  "MIT"
  s.authors = {"brownfeng"=>"brownfeng@github.com"}
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["UIKit", "AVFoundation", "Foundation"]
  s.libraries = ["c++","z"]
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.source_files = "tools/customTool/*.{h,m}"
  s.public_header_files = "tools/customTool/*.h"

end
