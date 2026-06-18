class Hive < Formula
  desc "AI desktop platform — learns, protects, and works while you sleep"
  homepage "https://hivecode.app"
  version "0.3.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.39/hive-macos-arm64.tar.gz"
      sha256 "5b58969dc24ad43331b709a962dd2cc4e621dd804c2f6d56a5c2aafed9173f8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PatSul/Hive/releases/download/v0.3.39/hive-linux-x64.tar.gz"
      sha256 "db39437d90b4e2cb2e74e52a469d906f364ce04a5e86b07f62563a23490feec7"
    end
  end

  def install
    bin.install "hive"
  end

  test do
    assert_match "hive", shell_output("#{bin}/hive --version 2>&1", 1)
  end
end
