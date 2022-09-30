# typed: false

class Odin < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.2.0-beta.3"
  
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta.3/odin_darwin_amd64.tar.gz"
    sha256 "9f8f80c640cbccfb4e2a4883b5001640860d3417c35ccbae90d1091db3e764ca"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta.3/odin_darwin_arm64.tar.gz"
    sha256 "bdb632aa6958a9ba182719d80b5cdd6a900d6e916679e7af44c34a7c13eb44b3"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-beta.3/odin_linux_amd64.tar.gz"
    sha256 "680d2ad36c51ba0e71eedc6cdb0dfbee574424e51b1c0aa054a0066b1aef761d"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
