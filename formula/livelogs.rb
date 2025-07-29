# typed: false
require_relative "lib/github"

class Livelogs < Formula
  desc "Interface for service owners to check service logs for any environment"
  homepage "https://github.com/dream-sports-labs/livelogs"
  version "0.2.2"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.2/livelogs_darwin_amd64.tar.gz"
    sha256 "94d315742ff9b7307710d31230307dc1841ced7b2f71a44f4bb55dc4b0015e28"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.2/livelogs_darwin_arm64.tar.gz"
    sha256 "e824fb55660d9fe319898346ca937d84089052f0a976d4165b505fdba7636d9e"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.2/livelogs_linux_amd64.tar.gz"
    sha256 "1b3e8db1f8d409af0894fbc43d7aeb59652f0183c0499dc4cb2adca245656d0e"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
