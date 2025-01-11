# typed: false

class StreamsAT006Alpha < Formula
  desc "Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.6-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.6-alpha/streams_darwin_amd64.tar.gz"
    sha256 "c069b429906651c9adafe95bcd0d807c906daca3ac244758a1a467a0963f0e48"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.6-alpha/streams_darwin_arm64.tar.gz"
    sha256 "1ed87dd3c13b5edbe13a0ceb284d98d306b84aea05f1e1e0afe86ee56a79f2b5"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.6-alpha/streams_linux_amd64.tar.gz"
    sha256 "16bfd0101aa7250657af13956640413211797a415ac6eba497bef730e495650b"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
