class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.40/hive-macos-arm64.tar.gz"
      sha256 "01e930a5f1b0176347cb85c8284da748b8a3c6fa13407e7341c5ae39d6820cb6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.40/hive-linux-x64.tar.gz"
      sha256 "a4cc86964b8ee5695a7629e613621895052fa77557b620d059b2ce3ab8e46454"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
