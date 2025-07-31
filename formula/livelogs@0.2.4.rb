# typed: false
require_relative "lib/github"

class LivelogsAT024 < Formula
  desc "Interface for service owners to check service logs for any environment"
  homepage "https://github.com/dream-sports-labs/livelogs"
  version "0.2.4"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.4/livelogs_darwin_amd64.tar.gz"
    sha256 "a869c0a9927a6af75442183b5576bdd32903c28ba9ce5850f31564e37ca1b70c"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.4/livelogs_darwin_arm64.tar.gz"
    sha256 "8cf6674ae84ad316c67a13222d24b0cb2729f1b0d60ef2619f49ffa58cb36fe6"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.4/livelogs_linux_amd64.tar.gz"
    sha256 "51fac6d0bb3b48dfed9a92b023d44160ab0d6c561f6b72cb4633f5410469c182"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
