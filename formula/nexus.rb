# typed: false
require_relative "lib/github"

class Nexus < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.18"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.18/nexus_darwin_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "169e4fafd0767a2d5fcdfac5ca46d9b865469568be15fd77770968ed9963c55d"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.18/nexus_darwin_arm64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a0b419560b89e067d5a38908e963d7cb198240187eed61bb04ef4f6f1a573451"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.18/nexus_linux_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0cd29846111fa4813adfdd6dacebbf0b8988446e0a7733dca1164c96866663ea"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
