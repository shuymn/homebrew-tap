class Capsule < Formula
  desc 'Daemon-backed Rust prompt engine for zsh with async updates and hot-reloadable modules.'
  version '0.1.2'
  homepage 'https://github.com/shuymn/capsule'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.2/capsule-v0.1.2-darwin-arm64.tar.gz'
      sha256 '44497e04237cc031d7d8346d0c3b9911bcaa3bbd7d17fe317d16f942e720e4aa'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.2/capsule-v0.1.2-linux-arm64.tar.gz'
      sha256 '979fcffe74bfe11938f3a4466218750dafccc37790016189c5d09f8a9015faa4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/capsule/releases/download/v0.1.2/capsule-v0.1.2-linux-amd64.tar.gz'
      sha256 '0b82d29001b946ef1a98f5e32ccfd4b52537832b1f80e2eb1548c8262541ea60'
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
