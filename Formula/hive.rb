class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.31/hive-macos-arm64.tar.gz"
      sha256 "91905a3c0a76f5843ad44a8f0e02b84c6e10c788c1efe19203740099d76970e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.31/hive-linux-x64.tar.gz"
      sha256 "4e2246fb0c76c9247e0b55926a8db140f639f19c41c4518cce31ac769da25eb5"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
