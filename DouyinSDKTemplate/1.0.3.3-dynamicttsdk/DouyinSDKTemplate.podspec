#
#  Be sure to run `pod spec lint DouyinSDKTemplate.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "DouyinSDKTemplate"
    spec.version      = "1.0.3.3-dynamicttsdk"
    spec.summary      = "A short description of DouyinSDKTemplate."
    spec.description  = <<-DESC
    A long description of DouyinSDKTemplate.
                     DESC

    spec.homepage     = "http://EXAMPLE/DouyinSDKTemplate"

    spec.license      = { :type => "Copyright", :text => "Bytedance copyright" }

    spec.authors             = { "yangqihang" => "yangqihang@bytedance.com" }

    spec.platform     = :ios

    #  When using multiple platforms
    spec.ios.deployment_target = "9.0"

    spec.source       = { :http => "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/DouyinSDKTemplate/1.0.0/DouyinSDKTemplate.zip" }

    spec.pod_target_xcconfig = {
      "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "$(inherited) arm64 i386"
    }

    spec.default_subspecs = "ToB"
    spec.static_framework = true

    # 接入层
    spec.subspec "ToB" do |tob|
        # ToB 公用依赖
        # 此处的依赖实际是需要增加版本号的
        tob.dependency "DouyinSDK/Init", "1.0.3.3-dynamicttsdk"
        tob.dependency "DouyinSDK/Services/UTDID"
        tob.dependency "DouyinSDK/Services/Security"
        tob.dependency "DouyinSDK/Services/APM"
        tob.dependency "DouyinSDK/Services/AppLog"
        tob.dependency "DouyinSDK/Services/SDKSetting"
        tob.dependency "DouyinSDK/Services/Auth"

        # lottie 库不能到 3.x
        tob.dependency 'lottie-ios', '2.5.3'
        tob.dependency 'IGListKit', '3.4.0'
        tob.dependency 'MMKV', '>= 1.0.19'
        tob.dependency 'Masonry', '>= 1.1.0'
        tob.dependency 'MJRefresh', '>= 3.1.7'
        tob.dependency 'YYText', '>= 1.0'

        # 其他二方库
        tob.dependency 'DouyinOpenSDK', '>= 4.1.4'

        # ToB 小视频
        tob.subspec "Media" do |media|
            media.dependency "AwemeOpenSDK/Template/ToB", "1.0.3.3-dynamicttsdk"
            media.dependency 'MetaAD', '1.0.0.1-dynamicttsdk'

            media.dependency 'TTSDKFramework/Video'
        end
    end

  end

