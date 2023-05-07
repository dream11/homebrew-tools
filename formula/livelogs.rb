# typed: false

class Livelogs < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/livelogs"
  version "0.0.1"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_amd64.tar.gz"
    sha256 "530491f4582d4e13bf574fe6a9cfae2ea4e1bd1a68682c4a6618404dbd37e729"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_arm64.tar.gz"
    sha256 "9e838d22654da1be6f2a2bbc85dfd12c4720911e30659aab947f087ba2599994"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_linux_amd64.tar.gz"
    sha256 "7110e6f400adcf2fa8cf35819473a139b47626042f060aee9288c81bf14c9f08"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
