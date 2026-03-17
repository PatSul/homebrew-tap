class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.32/hive-macos-arm64.tar.gz"
      sha256 "140ab2957c6438ddd83c7366dd96ad1004f07b093928534aa9431e79331ec374"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.32/hive-linux-x64.tar.gz"
      sha256 "fc12973b5f5ade59f55227deffc0a6a61d6dd01b850f332d81211c126b70966e"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
