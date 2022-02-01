# typed: false
require_relative "lib/github"

class Odin < Formula
  desc "Internal framework CLI for CRUD operations with environments"
  homepage "https://github.com/dream11/odin"
  version "1.0.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ba833d556af4a47923fcb8780ca31492369808eea2165c733f5b5fd25c3885a7"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "4c5d45c7ad41cd217aa9f1bc906b921161a2554cb3e5084f3188ffd347ccc7b9"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.0-alpha/odin_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "801e95a44248765a1afdab0d650321f286cd6bf506c88ae571db3d0624dac37e"
  end

  conflicts_with "odin"
  
  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
