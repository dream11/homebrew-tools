# typed: false

class Odin < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.2.1"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.1/odin_darwin_amd64.tar.gz"
    sha256 "53e9f638e92439458b99253e26440b45431c56793776ee6c7fe4c90e707084d5"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.2.1/odin_darwin_arm64.tar.gz"
    sha256 "79d46c2dc2794cc146df5bd6eb453f5b4886ca17e30578b864ccfaf10b64d0b1"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.1/odin_linux_amd64.tar.gz"
    sha256 "4dfa076c43e230a8495c00f32ab25af2d929679ee223901f8b62add96df8953c"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
