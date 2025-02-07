Pod::Spec.new do |s|
  s.name = "ios-libs-tools"
  s.version = "0.2.0"
  s.summary = "A short description of ios-libs-tools."
  s.homepage         = 'https://github.com/fengqiyunyong2016/ios-libs-tools.git'
  s.license          =  "MIT"
  s.authors = {"fengqiyunyong2016"=>"mufengyuyun@126.com"}
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["UIKit", "Foundation"]
  s.libraries = ["c++","z"]
  s.source = { :path => 'https://github.com/fengqiyunyong2016/ios-libs-tools.git' }
  s.ios.deployment_target    = '9.0'
  s.source_files = "tools/customTool/*.{h,m}"
  s.public_header_files = "tools/customTool/*.h"

end
