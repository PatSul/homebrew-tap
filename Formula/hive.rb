class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.24/hive-macos-arm64.tar.gz"
      sha256 "aa5aba4b27f8bc5b1aa599e6e7aed59fa376aa87d49fe3b41abf5095d2bd1d68"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.24/hive-linux-x64.tar.gz"
      sha256 "831f1809c90c8e667fc94f3cec96745f5b353529407f41401bf86b0ab391a4b4"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
