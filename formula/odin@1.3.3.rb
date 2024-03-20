# typed: false

class OdinAT133 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.3.3"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.3/odin_darwin_amd64.tar.gz"
    sha256 "f42cac136eee79647f596d2fe296f7162cdfdad62ef571bb663c88070b354d68"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.3.3/odin_darwin_arm64.tar.gz"
    sha256 "9667e5f3c35ebb40f9b67863bc1103f1dd34caee3fbeaf7dbf576e5419a5f019"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.3/odin_linux_amd64.tar.gz"
    sha256 "923f78f6dd915de02ddabde7db41c68e7b0ee003c803feefcfaf35c0ae2d6f65"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
