class Capsule < Formula
  desc 'Daemon-backed Rust prompt engine for zsh with async updates and hot-reloadable modules.'
  version '0.2.0'
  homepage 'https://github.com/shuymn/capsule'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/capsule/releases/download/v0.2.0/capsule-v0.2.0-darwin-arm64.tar.gz'
      sha256 'fe3a018dff1db4152b093009de2eaf80807ba041ca16cc660f64bdc4452992a3'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/capsule/releases/download/v0.2.0/capsule-v0.2.0-linux-arm64.tar.gz'
      sha256 '73102bce60d3175c0723ff7ee0138885023de729a6fa3e67e9312c745d4ae72d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/capsule/releases/download/v0.2.0/capsule-v0.2.0-linux-amd64.tar.gz'
      sha256 'edaf658813275e85f5c3c4503b918104490b6398e7a46988fe235286efe97d0b'
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
