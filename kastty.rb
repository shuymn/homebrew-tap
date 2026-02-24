class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.0.4'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.4/kastty_v0.0.4_darwin_arm64.zip'
      sha256 'ef523848facf882cb99058d1f39461a49a8659e635f88e91ee4049a816116f93'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.4/kastty_v0.0.4_darwin_amd64.zip'
      sha256 '6cc0e62ef262b4a4763399c95ad81cad08c1ade569ae11a1cd55b52cf4466032'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.4/kastty_v0.0.4_linux_arm64.tar.gz'
      sha256 'ef2dfc9b9acb4ccf67b872c49dde87c1d52e6ec87b7122c23e41d99c9f1a144a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.0.4/kastty_v0.0.4_linux_amd64.tar.gz'
      sha256 '6ca68aa5f2012eca5872d5aceac5544e4999df5131f714863c6b7dbea4e14c4d'
    end
  end

  def install
    bin.install 'kastty'
  end
end
