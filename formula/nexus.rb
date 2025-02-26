# typed: false
require_relative "lib/github"

class Nexus < Formula
  desc "nexus cli"
  homepage "https://github.com/dream11/nexus-cli"
  version "0.0.14"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.14/nexus_darwin_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1473cd080da6bd1120ae6c6acf477336b2fa84490f254aabdcfab33784508c93"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.14/nexus_darwin_arm64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "051d98e296690523809f6084dc46b882107d34533cf062cdcb54ab3c25436d92"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/nexus-cli/releases/download/0.0.14/nexus_linux_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d4adb818066bd3c9d415d37afe536b935bc9933c7159f5fce22278522122b356"
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus --version && #{bin}/nexus --help"
  end

end
