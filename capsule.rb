class Capsule < Formula
  desc 'Daemon-backed Rust prompt engine for zsh with async updates and hot-reloadable modules.'
  version '0.3.0'
  homepage 'https://github.com/shuymn/capsule'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/capsule/releases/download/v0.3.0/capsule-v0.3.0-darwin-arm64.tar.gz'
      sha256 '6d1f9700af29d7d91249e0eacb3303a3ac85ce9792671df4f06cd920a6c7a6fc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/capsule/releases/download/v0.3.0/capsule-v0.3.0-linux-arm64.tar.gz'
      sha256 'fc56d00ba28626a205e72359e3f92b2c2301ffb4086a11c2baad577b04d6127e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/capsule/releases/download/v0.3.0/capsule-v0.3.0-linux-amd64.tar.gz'
      sha256 'c8c4857420b5dbb5b525c21271a9ce5f19d5e7662a33fd2a20beba33d681da7d'
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
