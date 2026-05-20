class Kastty < Formula
  desc 'A browser-based terminal sharing tool powered by ghostty-web and Bun'
  version '0.1.0'
  homepage 'https://github.com/shuymn/kastty'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/kastty/releases/download/v0.1.0/kastty_v0.1.0_darwin_arm64.zip'
      sha256 '26a2ab499f730be1cb3d3f1064af75253d0a7821e31bbd2e689cc7741f81b796'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.1.0/kastty_v0.1.0_darwin_amd64.zip'
      sha256 'b9693f20291210525aa2e9382298cdae8bb6eca48261b006004e70ba7e24d79f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/kastty/releases/download/v0.1.0/kastty_v0.1.0_linux_arm64.tar.gz'
      sha256 '634312ef1e0a67f594f57e3f9d35256610285f41c801134dd379493d88858d04'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/kastty/releases/download/v0.1.0/kastty_v0.1.0_linux_amd64.tar.gz'
      sha256 '61427ce549f283c7d5d2c69e771300e7dec4c2830894dedb347637dc507ac8b6'
    end
  end

  def install
    bin.install 'kastty'
  end
end
