class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.0/hive-macos-arm64.tar.gz"
      sha256 "626b7d03154a3e56e2db968155fcf16e5ee76c21fcf06d97882509dbcc053f56"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.0/hive-linux-x64.tar.gz"
      sha256 "c1c575bcb1f3205efa1429ca77df91f1f5e798f0375f5446c96b8b4585dddf2d"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
