class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.42/hive-macos-arm64.tar.gz"
      sha256 "87ab1d7bf0ccd6f56da5ef94b53dd63539486bd35a427e49ca91cf185f0bc14a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.42/hive-linux-x64.tar.gz"
      sha256 "279109d21dff9b1ea9d5ba9d0e3ac627a370804bd2f622d7b06b15e87761e9ab"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
