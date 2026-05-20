class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.2.1'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.1/kastty_v0.2.1_darwin_arm64.zip'
      sha256 '8a5b671da4d19d640763654e3fee1c8880a9776a7e8ba2e42d8dacc8d803c34f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.1/kastty_v0.2.1_darwin_amd64.zip'
      sha256 'a1f23c3b262900faaaf94533dd71b5b6982c1d5df5e21613f212ba5e10b3e2b7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.1/kastty_v0.2.1_linux_arm64.tar.gz'
      sha256 '806b6203ebb4153fb4c4a9c362b8d3efb9e1d3ae5a290debaac34fc4d56bc461'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.2.1/kastty_v0.2.1_linux_amd64.tar.gz'
      sha256 '92766525de446b215ef904011e4482cc70a2529391b49e8542b024251f704cf1'
    end
  end

  def install
    bin.install 'kastty'
  end
end
