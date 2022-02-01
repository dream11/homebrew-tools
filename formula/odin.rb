# typed: false
require_relative "lib/github"

class Odin < Formula
  desc "Internal framework CLI for CRUD operations with environments"
  homepage "https://github.com/dream11/odin"
  version "1.0.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "dc97ee87cf3880161464f410de0089ca7db622a848a074de1ef6a6d5b2d83fb4"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5649de96620b62fb3b59c9ce679eedf6ac3b5eeaa0be97deb7c8c105f02ac664"
  end

  conflicts_with "odin"
  
  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
