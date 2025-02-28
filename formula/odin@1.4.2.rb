# typed: false

class OdinAT142 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.4.2"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.2/odin_darwin_amd64.tar.gz"
    sha256 "fcf5023745e958ca93f55f3e2fabe8564579858adc566e3f429f05f51870658a"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.4.2/odin_darwin_arm64.tar.gz"
    sha256 "c401c1bf5803226011698ca046a80f9f3fb5a7ddc8156e9e041e974a9c57de19"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.2/odin_linux_amd64.tar.gz"
    sha256 "8de2337416904c0967466c7c0b4c05173622baf5eecbfbe9b2197590d33ff367"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
