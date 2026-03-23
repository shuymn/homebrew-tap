class Capsule < Formula
  desc 'Daemon-backed Rust prompt engine for zsh with async updates and hot-reloadable modules.'
  version '0.1.1'
  homepage 'https://github.com/shuymn/capsule'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.1/capsule-v0.1.1-darwin-arm64.tar.gz'
      sha256 'e915f2f467bc31aa36abfddb408732ef2a747d57d8d3237225db804e0ea256a5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.1/capsule-v0.1.1-linux-arm64.tar.gz'
      sha256 'bc823ff9b0c821391f088757816e65f5b15d411f83f957679a7b01db680aa41f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.1/capsule-v0.1.1-linux-amd64.tar.gz'
      sha256 '6cb66d1b30ceadfb01290424a7ec9a059a5d75c4c1599257ab90b4c71590a266'
    end
  end

  def install
    bin.install 'capsule'
  end

  def post_install
    system "#{bin}/capsule", "daemon", "install"
  end

  def caveats
    <<~EOS
      To activate capsule, add the following to your ~/.zshrc:
        eval "$(capsule init zsh)"

      To unregister the daemon before uninstalling, run:
        capsule daemon uninstall
    EOS
  end

  test do
    system "#{bin}/capsule", '-h'
  end
end
