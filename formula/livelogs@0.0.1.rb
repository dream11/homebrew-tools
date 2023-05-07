# typed: false

class LivelogsAT001 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/livelogs"
  version "0.0.1"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_amd64.tar.gz"
    sha256 "154b3a64c2afdec98578e204c6565862e2879ba5192f8849abc83c69b62d7af1"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_arm64.tar.gz"
    sha256 "a1eb796269f3b90b79ec07ec6ed573ceadd04684d81b5ccc6d51d4be5ed23341"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_linux_amd64.tar.gz"
    sha256 "41d3837c9f576f547dea2c9f61fa689877d4a1ce5173452e143176a9bb18ef59"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
