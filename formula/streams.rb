# typed: false
require_relative "lib/github"

class Streams < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.10-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.10-alpha/streams_darwin_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "88555d21d22f3c6ff3047683a9862224036befd96031f2519bb1cc071e0fb638"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.10-alpha/streams_darwin_arm64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "233e30935f99e5cd93f8babd2f9b025c5c20b8337e0fca6596f1b2ba09f8adc2"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.10-alpha/streams_linux_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "272287f4a97d97659327fda5125dae3ee6de070428275c1bce054dc0a5fe87f0"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
