class Pommitlint < Formula
  desc 'Single-binary commit message linter compatible with @commitlint/config-conventional. No Node.js required.'
  version '2.0.0'
  homepage 'https://github.com/shuymn/pommitlint'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.0/pommitlint_v2.0.0_darwin_arm64.tar.gz'
      sha256 '1be11f08d9e29fe849aa9b291bcc74a2fbf3b76c7c1ae062239225e94cdccd33'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.0/pommitlint_v2.0.0_darwin_amd64.tar.gz'
      sha256 '39b6e73b8cf1717d6df2e81f480e338e23d8ea3e8ccc072681dc040dbe6f9cd6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.0/pommitlint_v2.0.0_linux_arm64.tar.gz'
      sha256 'b759dcc49bc636730720374bfb3408e528892cfb34e694da9761c1dccddd5085'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.0/pommitlint_v2.0.0_linux_amd64.tar.gz'
      sha256 '1b94de95ff3b12e85a8b41e7ec595303e5b9f1ed6bec5a9bbb4b2482292dde84'
    end
  end

  def install
    bin.install 'pommitlint'
  end

  test do
    system "#{bin}/pommitlint", '-h'
  end
end
