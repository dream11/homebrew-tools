# typed: false

class OdinAT101Alpha < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.0.1-alpha"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.1-alpha/odin_darwin_amd64.tar.gz"
    sha256 "35ef78f18974a02afbb96fef251ba1de5fb07920fa2864267f95168cd28d3c40"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.0.1-alpha/odin_darwin_arm64.tar.gz"
    sha256 "7e83a133f455ca325c044dd5c91bec872eef0392da1e02fac45646630f25f9be"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.0.1-alpha/odin_linux_amd64.tar.gz"
    sha256 "2060529afb90e7006937c957d27d1b7fd5e47ddb8fa89d71462e9e4aa68814cb"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
