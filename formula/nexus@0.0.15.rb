# typed: false

class NexusAT0015 < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.15"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_darwin_amd64.tar.gz"
    sha256 "c5c74c6e3a08d16bb285ec9e77fef2b642b1998be0d90ff791c856782ae40be5"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_darwin_arm64.tar.gz"
    sha256 "efeb8ad008978de6c7799b6a4917f9fa29c94a0c902a4925e368c2bd98e88bb4"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.15/nexus_linux_amd64.tar.gz"
    sha256 "81b15e815ee3d5ff1397efcbed0622b0a28470ff8cc0ebdbe5249eb5bcf13517"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
