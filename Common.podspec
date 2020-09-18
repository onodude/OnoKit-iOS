Pod::Spec.new do |s|
	s.name = 'Common'
	s.version = '1.0.0'
	s.summary = 'A collection of common classes'
	s.description = 'This is a collection of classes, extensions, methods and functions that aims at decomplexifying tasks that should be easy.'
	s.swift_version = '5'

	s.homepage = 'https://github.com/onodude/Common-iOS'
	s.license = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
	s.author = { 'onodude' => 'onur.erdemol@gmail.com' }
	s.source = { :git => 'https://github.com/onodude/Common-iOS.git', :tag => s.version.to_s }
	s.documentation_url = 'https://github.com/onodude/Common-iOS/blob/master/README.md'

	s.ios.deployment_target = '13.0'

	s.source_files = 'Common/**/*.swift'

	s.dependency 'ObjectMapper', '~> 3.5.1'
	s.dependency 'SnapKit', '~> 5.0.0'
	s.dependency 'KeychainAccess', '~> 4.1.0'
	s.dependency 'SwiftLint', '~> 0.40.0'
end

