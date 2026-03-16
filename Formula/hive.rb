class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.30/hive-macos-arm64.tar.gz"
      sha256 "0d58d21f946a45f3d7cdbb6bd17723a495f49e86dfdd5b1d6d612ca3741b0b19"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.30/hive-linux-x64.tar.gz"
      sha256 "46dc3179bdab4952938677276e56b2a7757a3906711ddb3e8e219e8f9812a536"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
