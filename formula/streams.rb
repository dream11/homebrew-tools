# typed: false
require_relative "lib/github"

class Streams < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.7-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.7-alpha/streams_darwin_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "55657e01359b1951c74e8dfae61c279b94471465f5deefbd04a24334c21a3863"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.7-alpha/streams_darwin_arm64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "46f88b5c6d157396e535f85570472f6058fdb2fbd042f50ffd95fc73fc96181d"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.7-alpha/streams_linux_amd64.tar.gz" , :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0784fafaa599331f92edbe90b5acb7b006b6de60063ce2de65abeab915a4d9b8"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
