# typed: false
require_relative "lib/github"

class StreamsCliAT001Alpha < Formula
  desc "Streams CLI"
  homepage "ttps://github.com/dream11/streams-cli"
  version "0.0.1-alpha"


  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.1-alpha/streamverse_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "b5640d47c20c6f8a576f6ed57f88c819f9d7de533d6aadf9348c8ef370f3d94e"
  end


  def install
    bin.install "streams-cli"
  end

  test do
    system "#{bin}/streams-cli version"
  end

end
