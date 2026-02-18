class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.4/hive-macos-arm64.tar.gz"
      sha256 "29d93d7593172aed8ae60ac74f89e3b98adb1e5ced6620631cb20545edbf634c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.4/hive-linux-x64.tar.gz"
      sha256 "9217d1ae53a1d0f80272e980e872d4224ef226d045e8b8bfc0b51fd59d0f3b9a"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
