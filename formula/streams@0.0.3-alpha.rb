# typed: false

class StreamsAT003Alpha < Formula
  desc "Streamverse - Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.3-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.3-alpha/streamverse_darwin_amd64.tar.gz"
    sha256 "486c0225b186908afed7bb4236de8e1e7744fed1b3ba56fa47c0a87a1aa9f369"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.3-alpha/streamverse_darwin_arm64.tar.gz"
    sha256 "e79f36e40423a2305dd87898e7fc11d98f25e392cac29a15908755915414827b"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.3-alpha/streamverse_linux_amd64.tar.gz"
    sha256 "5c43b98b293e18c4de4d98a43e78fda795004eec1e16d78659009e68f4611b5a"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
