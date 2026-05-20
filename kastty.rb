class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.0.6'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.6/kastty_v0.0.6_darwin_arm64.zip'
      sha256 'b33be493bdca091b6fbf6b466bb0185b671f7c36a6346eccc65fa9fa34cffd5c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.6/kastty_v0.0.6_darwin_amd64.zip'
      sha256 '83fae40514846761d66a20129f71e6677172e532d6d963136cc498bec16fa289'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.6/kastty_v0.0.6_linux_arm64.tar.gz'
      sha256 '53a1f37f0d3966d36da64d84fe3462c41c2b21bcee5b8b357ec2e94773350709'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.6/kastty_v0.0.6_linux_amd64.tar.gz'
      sha256 'c655a46a19ec4af7ecde05ef8c507cb5cfe606361867b76562335646b5b38316'
    end
  end

  def install
    bin.install 'kastty'
  end
end
