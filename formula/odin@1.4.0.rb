# typed: false

class OdinAT140 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.4.0"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.0/odin_darwin_amd64.tar.gz"
    sha256 "26d9a158f644ca62fc81c1a080d417241dff11ee775ee43bbca70b59c49fbf2b"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.4.0/odin_darwin_arm64.tar.gz"
    sha256 "37ec95f09df98ec05d8b7fbfe46ed13bb92b5304c9e79f9dd6f1011136ce3bc7"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.0/odin_linux_amd64.tar.gz"
    sha256 "f00ff6154290c16bf66a1027d76157d3032630483924f465493070aefc9779dc"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
