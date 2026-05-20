class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.2.0'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.0/kastty_v0.2.0_darwin_arm64.zip'
      sha256 '8aa5c70ca606626bca42f7ac3809669aff58a7678a5a2fdc71a769f80bb678e3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.0/kastty_v0.2.0_darwin_amd64.zip'
      sha256 '9b29142db4db40421cfe860d513d93e5047b659223e8ff70f1d0818b06d35af6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.0/kastty_v0.2.0_linux_arm64.tar.gz'
      sha256 '7338984ec06470ceecade0c07800621deb880c8d753e2805556f9efea93c1d1b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.0/kastty_v0.2.0_linux_amd64.tar.gz'
      sha256 '2cc15af68c7b816112be18c2d38135921cf3e1af7ce1148b34807d52e6639611'
    end
  end

  def install
    bin.install 'kastty'
  end
end
