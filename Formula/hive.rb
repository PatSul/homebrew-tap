class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.2.0/hive-macos-arm64.tar.gz"
      sha256 "376b1f380fbbe1f8bbb7a40db54ba919663839c7ae3cee90ba6d45bf80447c26"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.2.0/hive-linux-x64.tar.gz"
      sha256 "605e63c9941ff72af921cb6b31a20b3a7de0bc64d578b979ac0c606d248936fb"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
