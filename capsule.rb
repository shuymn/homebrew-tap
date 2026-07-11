class Capsule < Formula
  desc 'Daemon-backed Rust prompt engine for zsh with async updates and hot-reloadable modules.'
  version '0.4.0'
  homepage 'https://github.com/shuymn/capsule'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/capsule/releases/download/v0.4.0/capsule-v0.4.0-darwin-arm64.tar.gz.sha256'
      sha256 'bd85ac02cad6a379224c596d3fe2015bc86039e8a4226ce8441d2237b70c85c7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/capsule/releases/download/v0.4.0/capsule-v0.4.0-linux-arm64.tar.gz.sha256'
      sha256 '45a7732b23a0011a8132ed33a30d5d39cf8697db526f0068ca8d496ada0f293d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/capsule/releases/download/v0.4.0/capsule-v0.4.0-linux-amd64.tar.gz.sha256'
      sha256 '190b84cbfdbb37d398299cf4b193ea3d6961fe2d9cb19b5ae93c6c9242264b30'
    end
  end

  def install
    bin.install 'capsule'
  end

  def caveats
    <<~EOS
      To activate capsule, add the following to your ~/.zshrc:
        eval "$(capsule init zsh)"

      To register the daemon, run:
        capsule daemon install

      To unregister the daemon before uninstalling, run:
        capsule daemon uninstall
    EOS
  end

  test do
    system "#{bin}/capsule", '-h'
  end
end
