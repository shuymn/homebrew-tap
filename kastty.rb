class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.0.5'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.5/kastty_v0.0.5_darwin_arm64.zip'
      sha256 '190a10c79b9dc78d97cf954dc0ce39330b213fa026394f21b5684a07ae1e6551'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.5/kastty_v0.0.5_darwin_amd64.zip'
      sha256 '00dfdb5f1306461bd82a96a162b72d8923e1f4b0959b3f2943f7d512f1c2a094'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.5/kastty_v0.0.5_linux_arm64.tar.gz'
      sha256 'c17cc0acd4d0397d3d9b7ccd0992afc55b9ef8afd6c70f22ba50b0d0f3631b1f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.5/kastty_v0.0.5_linux_amd64.tar.gz'
      sha256 '4000ce52f3d0276cc61ed2dc84529a687d05e7df07d95c6e3242635d9a1c6d2f'
    end
  end

  def install
    bin.install 'kastty'
  end
end
