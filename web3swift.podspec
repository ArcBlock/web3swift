Pod::Spec.new do |spec|
    spec.name         = 'web3swift'
    spec.version      = '2.3.0'
    spec.ios.deployment_target = "11.0"
    spec.osx.deployment_target = "10.11"
    spec.license      = { :type => 'Apache License 2.0', :file => 'LICENSE.md' }
    spec.summary      = 'Web3 implementation in vanilla Swift for iOS, macOS, and Linux'
    spec.homepage     = 'https://github.com/matter-labs/web3swift'
    spec.author       = {"Alex Vlasov" => "alex.m.vlasov@gmail.com", "Anton Grigorev" => "antongrigorjev2010@gmail.com", "Petr Korolev" => "sky4winder@gmail.com"}
    spec.source       = { :git => 'https://github.com/ArcBlock/web3swift.git', :tag => spec.version.to_s }
    spec.source_files = "Sources/web3swift/{Contract,Convenience,EthereumABI,EthereumAddress,HookedFunctions,KeystoreManager,Promises,SwiftRLP,Transaction,Web3}/*.swift", "Sources/web3swift/{Tokens,Utils}/**/*.swift"
    spec.ios.source_files   = 'Sources/web3swift/Browser/*.swift'
    spec.resource_bundle = { "Browser" => "Sources/web3swift/Browser/*.js" }
    spec.swift_version = '5.0'
    spec.frameworks = 'CoreImage'
    spec.dependency 'BigInt', '~> 5.2'
    spec.dependency 'Starscream', '~> 4.0.8'
    spec.dependency 'CryptoSwift', '~> 1.6.0'
    spec.dependency 'secp256k1.swift'
    spec.dependency 'PromiseKit', '~> 6.15.3'
end
