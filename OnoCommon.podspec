Pod::Spec.new do |s|
	s.name = 'OnoCommon'
	s.version = '1.0.5'
	s.summary = 'A collection of common classes'
	s.description = 'This is a collection of classes, extensions, methods and functions that aims at make things easy.'
	s.swift_version = '5'

	s.homepage = 'https://github.com/onodude/Common-iOS'
	s.license = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
	s.author = { 'onodude' => 'onur.erdemol@gmail.com' }
	s.source = { :git => 'https://github.com/onodude/Common-iOS.git', :tag => s.version.to_s }
	s.documentation_url = 'https://github.com/onodude/Common-iOS/blob/develop/README.md'

	s.ios.deployment_target = '13.0'

	s.source_files = 'OnoCommon/**/*.swift'
end

