class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.41/hive-macos-arm64.tar.gz"
      sha256 "93f4e98230a7dee0bb2ff5eb36d3f022ba033f085ad0ea96973a809cc51d94f9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.41/hive-linux-x64.tar.gz"
      sha256 "f120c1db7870fadde968f4695ac55f48b7c99dd9f8b08dad3224a66670949289"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
