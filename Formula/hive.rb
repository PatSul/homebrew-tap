class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.27/hive-macos-arm64.tar.gz"
      sha256 "36d5a61fbae3fc227d78a241fc61b15694e1d80b7eade601443c3223422bbbd0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.27/hive-linux-x64.tar.gz"
      sha256 "02d5b76ed4fcb49f806b44def6a540d28d32d98e134b01dacbe78ca7c5bdefc8"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
