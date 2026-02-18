class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.2/hive-macos-arm64.tar.gz"
      sha256 "01fdd75236b4f864ebd57619873f7ae9213ffb35f877eb71e0d20c5d31ed1c4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.2/hive-linux-x64.tar.gz"
      sha256 "5ac802f33d40b66b65d91f023b461f3d566348ba1bad9a73f549684d897b9e45"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
