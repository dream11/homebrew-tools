# typed: false

class OdinAT110Alpha < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.1.0-alpha"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.1.0-alpha/odin_darwin_amd64.tar.gz"
    sha256 "9ea4d923bae89fab617e972ce16eaf6ae026fb1f245ce223715305b879173340"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.1.0-alpha/odin_darwin_arm64.tar.gz"
    sha256 "c2b15bd044bf165f90dcd38f98a00925cf5cd6bf46a4f40ba53512462042e149"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.1.0-alpha/odin_linux_amd64.tar.gz"
    sha256 "08264b964c510e9933c0410ddf446766d4b2bd0c57ef494cd000cb2ef3460bc3"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
