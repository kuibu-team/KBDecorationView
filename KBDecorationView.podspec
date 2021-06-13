Pod::Spec.new do |spec|

  spec.name          = "KBDecorationView"
  spec.version       = "1.5"
  spec.summary       = "装饰视图，用于装饰内容视图"

  spec.description   = <<-DESC
                       KBDecorationView主要的功能是提供一个装饰框，可以指定装饰框型的形状，通过蒙版来实现，绘制蒙版的形状即可指定装饰框的形状
                   DESC

  spec.homepage      = "https://github.com/kuibu-team/KBDecorationView.git"
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "DancewithPeng" => "dancewithpeng@gmail.com" }  
  spec.platform      = :ios, "10.0"
  spec.swift_version = '5.0'
  spec.source        = { :git => "https://github.com/kuibu-team/KBDecorationView.git", :tag => "#{spec.version}" }
  spec.source_files  = "KBDecorationView/Sources", "KBDecorationView/Sources/**/*.{swift}"
end
