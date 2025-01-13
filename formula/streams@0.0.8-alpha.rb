# typed: false

class StreamsAT008Alpha < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.8-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.8-alpha/streams_darwin_amd64.tar.gz"
    sha256 "d8b948ddfdd9e0a04027ef204c6c1b9596778c1d7f377e24b9b31af0b7ae048e"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.8-alpha/streams_darwin_arm64.tar.gz"
    sha256 "306c0fe28d5ced76df4d1d2cb9a0fc96665863085fd57a0a1d0e2a5d6ed924f3"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.8-alpha/streams_linux_amd64.tar.gz"
    sha256 "2fc9123271b5cd92ef17b8a860cb35e1e45b4f8a931cb71aa82c99385edf959d"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
