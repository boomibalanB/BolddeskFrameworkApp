Pod::Spec.new do |s|
s.name             = 'BolddeskFrameworkApp'
s.version          = '0.0.2'
s.summary          = 'Flutter Bolddesk framework'
s.description      = <<-DESC
The Bolddesk create ticket Flutter plugin provides a native framework integration for iOS using an xcframework.
DESC
s.homepage         = 'https://github.com/boomibalanB/BolddeskFrameworkApp.git'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Boomibalan B' => 'boomibalan.b@syncfusion.com' }
s.source           = { :git => 'https://github.com/boomibalanB/BolddeskFrameworkApp.git', :tag => s.version.to_s }
# Download and extract frameworks at install time
s.prepare_command = <<-CMD
    unzip -o BolddeskCommon.xcframework.zip
  CMD
s.vendored_frameworks = 'BolddeskCommon.xcframework',
                        'BolddeskPlugin.xcframework',
                        'BolddeskCombinedFramework.xcframework'
s.ios.deployment_target = '12.0'
s.static_framework = true
end
