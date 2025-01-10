# typed: false
require_relative "lib/github"

class StreamsCliAT001Alpha < Formula
  desc "Streams CLI"
  homepage "ttps://github.com/dream11/streams-cli"
  version "0.0.1-alpha"


  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.1-alpha/streamverse_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "35729391bf3bcaba3b962f79a81c0105eda922f0ffbc7e921f1144b790a61e4b"
  end


  def install
    bin.install "streams-cli"
  end

  test do
    system "#{bin}/streams-cli version"
  end

end
