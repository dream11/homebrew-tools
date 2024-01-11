# typed: false
require_relative "lib/github"

class Streamverse < Formula
  desc "Streamverse CLI tool"
  homepage "https://github.com/dream11/streamverse-cli"
  version "1.0.0"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streamverse/releases/download/1.0.0-uat/streamverse_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "764cb63d31d384582f53581f0608341aebe6ce858d24a6d63d4e67a37ed7edfa"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streamverse/releases/download/1.0.0-uat/streamverse_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5ad48e7163d1e0710881eb27358914d83c7ff5c314fa06d754d55eb4081b0ec6"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url " https://github.com/dream11/streamverse/releases/download/1.0.0-uat/streamverse_linux_amd64.tar.gz"
    sha256 "2313d3190587f643a90136dad85a117c290ffb012cff572dc3102c26ae2fa778"
  end

  def install
    bin.install "streamverse"
  end

  test do
    system "#{bin}/streamverse --version"
  end

end
