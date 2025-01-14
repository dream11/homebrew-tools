# typed: false

class StreamsAT009Alpha < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.9-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.9-alpha/streams_darwin_amd64.tar.gz"
    sha256 "27662a2779256840de29a729b16fc93579eccfe5ac007f50affd5daaf35ce70c"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.9-alpha/streams_darwin_arm64.tar.gz"
    sha256 "4d96701d81ad5e3446f2a7f9cd5f758777826ac6f799b1ceb0da2e72f2af808d"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.9-alpha/streams_linux_amd64.tar.gz"
    sha256 "2624c188b2fd917d39f92b3b94f64d7e8e1f9dfada156077880697dfd32d52bc"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
