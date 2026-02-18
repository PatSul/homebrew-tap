class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.3/hive-macos-arm64.tar.gz"
      sha256 "808f619fc63b9d450795be582d45b77728c8fef07a57b4855b99df1d9e7d8a8f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.3/hive-linux-x64.tar.gz"
      sha256 "4468adc8f3d824e28ce9f52062425fa177fcd227fffb5744cdd70be7584aea6c"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
