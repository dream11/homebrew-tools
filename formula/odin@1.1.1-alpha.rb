# typed: false

class OdinAT111Alpha < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.1.1-alpha"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.1.1-alpha/odin_darwin_amd64.tar.gz"
    sha256 "ceec6179e9803f7602b0ce1433becdbf79371e9271e44da67ca72abc87802366"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.1.1-alpha/odin_darwin_arm64.tar.gz"
    sha256 "b55e0e6c978adca2134c5d24f584910085f26ffefb79e841e8fe81949f4b323e"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.1.1-alpha/odin_linux_amd64.tar.gz"
    sha256 "f5177fab940d3bb24314bc3462afab1fff648d6054279fb763ff23ef6d39319c"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
