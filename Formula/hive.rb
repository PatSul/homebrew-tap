class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.5/hive-macos-arm64.tar.gz"
      sha256 "ec9e9bff8753e0b97dc33b3b975d09370979f59f12c87e893c8d151352735a21"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.5/hive-linux-x64.tar.gz"
      sha256 "aa9b556ec3110bc1fdf6eb584e2ad524bf18a92ce469d0fded397ec8326fc81a"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
