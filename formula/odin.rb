# typed: false
require_relative "lib/github"

class Odin < Formula
  desc "Internal framework CLI for CRUD operations with environments"
  homepage "https://github.com/dream11/odin"
  version "1.0.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0d7e61b9d3e1b2601236efa4d9d9a50fab60574a76fe0cd7a2d5711020d98951"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a9a582a321e51becac8df21cfcf8ef30085184ec78698a3a99b5761e539accbb"
  end

  conflicts_with "odin"
  
  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
