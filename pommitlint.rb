class Pommitlint < Formula
  desc 'Single-binary commit message linter compatible with @commitlint/config-conventional. No Node.js required.'
  version '2.0.1'
  homepage 'https://github.com/shuymn/pommitlint'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.1/pommitlint_v2.0.1_darwin_arm64.tar.gz'
      sha256 '37978880a7e0786646435df6885f999b4ee972531bba25eead80b3803b7ff54e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.1/pommitlint_v2.0.1_darwin_amd64.tar.gz'
      sha256 'e611a2fc727e0c3999679a3e26c5464898fd7c58ea18dcd3a51ebf8a6454cbbc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.1/pommitlint_v2.0.1_linux_arm64.tar.gz'
      sha256 'ab167993dfda357870b5fb1caf3668997dc4a5cf4c0d9f029b444025a07acdf5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v2.0.1/pommitlint_v2.0.1_linux_amd64.tar.gz'
      sha256 'ead07393cee3bbee597e620c5bb5bdeb2965126b0180c9b3bbd982559fa5b391'
    end
  end

  def install
    bin.install 'pommitlint'
  end

  test do
    system "#{bin}/pommitlint", '-h'
  end
end
