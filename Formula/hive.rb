class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.2.3/hive-macos-arm64.tar.gz"
      sha256 "676479c653ad15ff19a211588bbd9b73ed3305bf05970cd0f5daeb27f2071b1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.2.3/hive-linux-x64.tar.gz"
      sha256 "539534f540cf06a2590253b6660e8de04b0c174b5266a545a5ae6154cbcb8da4"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
