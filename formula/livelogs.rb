# typed: false

class Livelogs < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/livelogs"
  version "0.0.1"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_amd64.tar.gz"
    sha256 "f82b016d3e4cd1fe080b8d55946737caefb60408f344b991be7bd1370e246ead"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_darwin_arm64.tar.gz"
    sha256 "427b28cfd5c83fe7d5bd3234e27bc7a0cfc7f31d4d1cef8b15b3c35d5bb2561b"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/livelogs/releases/download/0.0.1/livelogs_linux_amd64.tar.gz"
    sha256 "b3a372c5b6c96594ba7b52a74e42dc67308637f500fe126235d9f4210710826b"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
