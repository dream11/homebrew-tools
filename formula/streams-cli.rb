# typed: false

class Streams-Cli < Formula
  desc "Streamverse - Stream cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.2-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.2-alpha/streamverse_darwin_amd64.tar.gz"
    sha256 "2cc337387c0fd9d114dda991219b8f394e52a8babb31adcc5bd090f530b93795"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.2-alpha/streamverse_darwin_arm64.tar.gz"
    sha256 "07a1ce12e6377b54551e6326c5f06f50ce03c23a6811f63c8416e3e9b1fa4f6a"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streas-cli/releases/download/0.0.2-alpha/streamverse_linux_amd64.tar.gz"
    sha256 "9437ae38569aa1ef59410a01904d05967031bf252dc3383f807565b26a0595b7"
  end

  def install
    bin.install "streams-cli"
  end

  test do
    system "#{bin}/streams-cli --version && #{bin}/streams-cli --help"
  end

end
