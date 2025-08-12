# typed: false

class NexusAT0017 < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.17"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.17/nexus_darwin_amd64.tar.gz"
    sha256 "30623c1ac670d0c1e8ac50fad8f63fe0b03fbace7b8237cc080afab7b786e868"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.17/nexus_darwin_arm64.tar.gz"
    sha256 "c67308afeb20f4a91432a11f9d09e5d1d359df90e58cfdf1980217fa8b56becf"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.17/nexus_linux_amd64.tar.gz"
    sha256 "f1294f279143b556db68dd1d76102f7127303af6f1f4c0cef45a38f24ae3d896"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
