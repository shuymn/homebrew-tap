class Pommitlint < Formula
  desc 'Single-binary commit message linter compatible with @commitlint/config-conventional. No Node.js required.'
  version '1.1.2'
  homepage 'https://github.com/shuymn/pommitlint'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shuymn/pommitlint/releases/download/v1.1.2/pommitlint_v1.1.2_darwin_arm64.tar.gz'
      sha256 '2d8757050c6671d2b4b8ef78d115bc0b1898a92b76d305efaa75b86888e0de38'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v1.1.2/pommitlint_v1.1.2_darwin_amd64.tar.gz'
      sha256 'a294df4fbc1c26f240172b51c10884dfeb1d60b4c688fa05dea6e6f9afeeadc8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/shuymn/pommitlint/releases/download/v1.1.2/pommitlint_v1.1.2_linux_arm64.tar.gz'
      sha256 '0429a8a272cef5a939a4b7ffcb117cdb30e975ee0a2fd9f107c5a65d86297bc3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shuymn/pommitlint/releases/download/v1.1.2/pommitlint_v1.1.2_linux_amd64.tar.gz'
      sha256 'e9ba9f65e3267e693354a30c8b6db8567981a7f753f85655ccbbffebc6c61eb8'
    end
  end

  test do
    system "#{bin}/pommitlint", '-h'
  end
end
