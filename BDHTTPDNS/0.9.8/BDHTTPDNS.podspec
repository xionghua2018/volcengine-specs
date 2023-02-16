Pod::Spec.new do |s|
  s.name = "BDHTTPDNS"
  s.version = "0.9.8"
  s.summary = "BDHTTPDNS is a toB sdk of httpdns"
  s.authors = {"liuzhe.1939"=>"liuzhe.1939@bytedance.com"}
  s.homepage         = 'https://github.com/volcengine/volcengine-specs'
  s.description = "BDHTTPDNS is a toB sdk of httpdns."
  s.source = { :http => "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/BDHTTPDNS-ios/#{s.version}/BDHTTPDNS.zip" }

  s.license          = {
    :type => 'Copyright',
    :text => <<-LICENSE
              Bytedance copyright
    LICENSE
  }

  valid_archs = ['armv7','arm64','x86_64']
  s.xcconfig = {
      'VALID_ARCHS' =>  valid_archs.join(' '),
  }

  # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64' }
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64' }

  s.ios.deployment_target = '9.0'
  s.preserve_paths = '*'
  s.vendored_library = 'libBytedanceHTTPDNS.a'
  s.libraries = 'BytedanceHTTPDNS'
  s.public_header_files = 'BDHTTPDNS/TTDnsResolver.h', 'BDHTTPDNS/TTDnsExportResult.h'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'

end
