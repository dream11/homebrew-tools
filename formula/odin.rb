# typed: false
require_relative "lib/github"

class Odin < Formula
  desc "Internal framework CLI for CRUD operations with environments"
  homepage "https://github.com/dream11/odin"
  version "1.0.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.0-beta/odin_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "21dda131748c97ff5317faed37c25c65279c7ba741b73ebc3559db3471ffdea7"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.0.0-beta/odin_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "<sha256 of odin_darwin_arm64.tar.gz>"
  end

  conflicts_with "odin"
  
  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
