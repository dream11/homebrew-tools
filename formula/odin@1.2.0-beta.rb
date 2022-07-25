# typed: false

class OdinAT120Beta < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.2.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta/odin_darwin_amd64.tar.gz"
    sha256 "cc3853d8bfb7b8abdcc65acde6075a282fbbc598908091c1edf093a9655c40ed"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta/odin_darwin_arm64.tar.gz"
    sha256 "edf61e9ca56621cad34d31f0a919b8ec6457d170663cc77d2e17c7a2adf7f77c"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta/odin_linux_amd64.tar.gz"
    sha256 "71770b7409105debb48ef02e56eb0a5ed8ab84e62f0e90f12a4f52f47d982fab"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
