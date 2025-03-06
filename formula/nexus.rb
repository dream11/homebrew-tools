# typed: false

class Nexus < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.15"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_darwin_amd64.tar.gz"
    sha256 "693f36cb465c95b904cfa8263ee0cb4287ce473a88f26b63dc62423eb6d3f889"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_darwin_arm64.tar.gz"
    sha256 "16597fc0a0bfda3f6e97fcc6be1e54f4dbedfc429b18b4777ba4e1c1a30659ea"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_linux_amd64.tar.gz"
    sha256 "1259884c67ae727547c402626b293a70bf2d099d233ce662e39ec5d0ed809851"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
