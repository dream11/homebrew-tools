# typed: false
require_relative "lib/github"

class Streams < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.11-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.11-alpha/streams_darwin_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "8c98b10ccd0f389b4a61ba576d6b64ef552335c865592248b7bc6fadf86c4346"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.11-alpha/streams_darwin_arm64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a8a46fa1f3b6e47106c7758e243a259fc7fbea297234db34b6c7e0c131d58cea"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.11-alpha/streams_linux_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f3de0dac3688f1ae64c1193af5d65647b82f87d337c44b0b1e426665e815c47a"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
