# typed: false

class NexusAT0019 < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.19"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.19/nexus_darwin_amd64.tar.gz"
    sha256 "cc0285d152b1aae66f8e1f6afc007a40c3a7085f48989b830be112d3013b41d5"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.19/nexus_darwin_arm64.tar.gz"
    sha256 "185bfcad6c2a5517c850c6e4966bdb53ffefb93379341ce1d0a08f57995ba27e"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.19/nexus_linux_amd64.tar.gz"
    sha256 "d3efe20d5c6d975d9610ab78e80ad9dcbb239f524ca590fb90af83c6a34f369b"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
