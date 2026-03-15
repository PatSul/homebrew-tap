class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.28/hive-macos-arm64.tar.gz"
      sha256 "70f147b6c259cfa84b554888e7b55f7326e5b2004c505d64b50fe6487ed67bf9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.28/hive-linux-x64.tar.gz"
      sha256 "87cfb126ce2466aadd00495f3b82949ba7a60c82d63b05b557196d435408a081"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
