# typed: false

class StreamsAT004Alpha < Formula
  desc "Streamverse - Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.4-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.4-alpha/streamverse_darwin_amd64.tar.gz"
    sha256 "74315aaa4215efab0f3658f376eb0b7b28bda14911eb0f7c17c660cdea61bbbd"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.4-alpha/streamverse_darwin_arm64.tar.gz"
    sha256 "8cd7e4269424028cb22e2590444c8485e2dac21e5572891158f3d07afb091a7f"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.4-alpha/streamverse_linux_amd64.tar.gz"
    sha256 "fb6bb627c2f460719961155aa113021af172f2ab9a25790b93dd845b9498ffaf"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
