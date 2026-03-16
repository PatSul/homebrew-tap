class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.29/hive-macos-arm64.tar.gz"
      sha256 "837a0aa0bc19989c5017dd63db659a0041684866d9def4b81ed2693d79b67fa5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.29/hive-linux-x64.tar.gz"
      sha256 "1c759bdb76b8d119a20b482599147779a1c8ad54f3b936b8a78bb5d011bfdcae"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
